const fs = require('fs');
const csv = require('csv-parser');
const path = require('path');
const fse = require('fs-extra');
const axios = require('axios');
const { finished } = require('stream/promises');
const FormData = require("form-data");

const tempDir = 'temp-images';
const getFilePath = (fileName) => path.join(__dirname, tempDir, fileName);
const delay = (ms = 1000) => new Promise(resolve => setTimeout(resolve, ms));

const instance = () => {
  const ins = axios.create({
    baseURL: "http://localhost:1338/api",
    // baseURL: "http://127.0.0.0:1338/api",
  });

  ins.interceptors.response.use(
    (response) => response.data,
    (error) => Promise.reject(error),
  );

  return ins;
}

/** crea slug texts
 * @param { string } text
 * @returns { string } regresa slug text
 */
function slugify(text) {
  return text
    .toLowerCase()
    .normalize("NFD") // Descompone los caracteres con tilde
    .replace(/[\u0300-\u036f]/g, "") // Elimina los diacríticos (tildes)
    .replace(/\s+/g, "-") // Reemplaza espacios con guiones
    .replace(/[^a-z0-9-]/g, "") // Elimina caracteres especiales excepto guiones
    .replace(/-+/g, "-") // Reemplaza múltiples guiones por uno solo
    .trim(); // Elimina espacios extra al inicio o final
}

/**
 * Obtiene los datos del CSV
 * @param { string } fileName - nombre del CSV
 * @param { () => void } action - funcion que se realizara cuando se obtenga la data del csv 
 * @returns {Promise< Array<any> >} Una promesa que regresa un array
 */

const getRecords = async (fileName, action) => {
  const records = [];

  return new Promise((resolve, reject) => {
    fs.createReadStream(`csv/${fileName}.csv`)
      .pipe(csv())
      .on('data', (row) => {
        try {
          action(row, records);
        } catch (error) {
          reject(error);
        }
      })
      .on('end', () => {
        console.log(`Contenido del archivo ${fileName}.csv leído:`);
        resolve(records);
      })
      .on('error', (error) => {
        console.error(`Error al leer el archivo ${fileName}.csv: `, error.message);
        reject(error);
      });
  });
};

/**
 * Obtiene los datos del CSV
 * @param { string } fileName - nombre del JSON
 * @returns { any } Una promesa que regresa un array
 */
const getDtaFromJSON = (fileName) => {
  return new Promise((resolve, reject) => {
    fs.readFile(`json/${fileName}.json`, (err, data) => {
      if (err) reject(err);
      try {
        const jsonDATA = JSON.parse(data);
        resolve(jsonDATA)
      } catch (parseErr){
        console.error("Error parsing JSON: ", parseErr);
        reject(parseErr);
      }
    })
  });
}

/**
 * Guardar los datos en strapi en su respectiva coleccion
 * @param { Array<any> } records
 * @param { string } endpoint
 * @param { () => void } action - function que sera llamado si la api guardo los datos
 * @returns {Promise<void>} Una promesa que ejecuta una API
 */
const sendData = async (records, endpoint, action) => {
  for (const record of records) {
    try {
      const res = await instance().post(`/${endpoint}/`, { data: record });
      console.log('Datos enviados exitosamente:');
      if (action) action(record, res.data);
      await delay();
    } catch (error) {
      console.error("send data error: ", record);
      if (error.response) {
        console.error('Error en la respuesta de la API:', JSON.stringify(error.response.data));
      } else {
        console.error('Error durante la solicitud:', error.message);
      }
    }
  }
};

/**
 * Guardar los datos en strapi en su respectiva coleccion
 * @param { Array<any> } records - debe de venir el documentId
 * @param { string } endpoint - 
 * @param { () => void } action - function que sera llamado si la api guardo los datos
 * @returns {Promise<void>} Una promesa que ejecuta una API
 */
const updateData = async (records, endpoint, action) => {
  for (const { documentId, ...rest } of records) {
    try {
      const res = await instance().put(`/${endpoint}/${documentId}/`, { data: rest });
      console.log('Datos actualizado exitosamente:');
      if (action) action({ documentId, ...rest }, res.data);
      await delay();
    } catch (error) {
      console.error("send data error: ", { documentId, ...rest });
      if (error.response) {
        console.error('Error en la respuesta de la API:', JSON.stringify(error.response.data));
      } else {
        console.error('Error durante la solicitud:', error.message);
      }
    }
  }
};

/**
 * Descarga imágenes desde las URLs proporcionadas.
 * @param { Array<{ url: string } & { Record }>} records - Un array de objetos con URLs de las imágenes.
 * @param { { url: string; fileName: string; filePath: string } } attr - objeto que viene el url & fileName property
 * @returns {Promise<Array<any>>} Una promesa que devuelve un arreglo con la ruta del archivo descargado.
 */
const downloadImage = async (records, attr) => {
  for (const data of records) {
    try {
      const urlKey = attr ? attr.url : 'url';
      const fileNameKey = attr ? attr.fileName : 'fileName';
      const filePathKey = attr ? attr.filePath : 'filePath';

      const response = await axios({
        url: data[urlKey],
        method: 'GET',
        responseType: 'stream',
      });

      const filePath = path.join(tempDir, data[fileNameKey]);
      await fse.ensureDir(tempDir);

      const writer = fs.createWriteStream(filePath);
      response.data.pipe(writer);

      await finished(writer);

      // Asignar la nueva propiedad y eliminar las existentes
      data[filePathKey] = filePath;

      console.info("downloaded file: ", data[fileNameKey]);

      if (data[urlKey] !== undefined) delete data[urlKey];
      if (data[fileNameKey] !== undefined) delete data[fileNameKey];

      await delay();
    } catch (error) {
      console.error("downloadImage error: ")
      console.error(`Error al descargar la imagen desde ${data.url}:`, error.message);
    }
  }
  return records;
};

/**
 * Subir imágenes a Strapi
 * @param { Array<any> } records - Un array de objetos.
 * @param { string } name - name attr del objeto
 * @param { string } fileName - fileName attro del objecto
 * @returns { Promise< Array<any> > } Una promesa que devuelve un arreglo con el id de la imagen.
 */
const uploadImage = async (records, name, fileName) => {
  for (const record of records) {
    try {
      const filePathKey = fileName || 'fileName'; // Determina la clave para el nombre del archivo
      const filePath = record[filePathKey] || getFilePath(record.fileName);

      // Validar si el archivo existe
      if (!fs.existsSync(filePath)) throw new Error(`El archivo no existe en la ruta especificada: ${filePath}`);

      // Crear y configurar el FormData
      const formData = new FormData();
      formData.append('files', fs.createReadStream(filePath));

      // Realiza la solicitud a la API de Strapi
      const [media] = await instance().post('/upload/', formData, {
        headers: { ...formData.getHeaders() },
      });

      if (!media || !media.id) throw new Error('La respuesta de la API no contiene el ID esperado.');

      console.info("uploaded: ", record[filePathKey] || record.fileName);

      // Actualiza el registro con el ID del archivo subido
      record[name] = media.id;

      // Eliminar la propiedad del archivo si existe
      if (record[filePathKey] !== undefined) delete record[filePathKey];

      await delay();
    } catch (error) {
      console.error("uploadImage Error: ")
      console.error('Error al subir la imagen:', error.message);
    }
  }
  return records;
};


/**
 * Limpia la carpeta temp-images
 * 
 * @returns {void} no retorna algo
 */
function cleanUpTempImages() {
  const folderPath = path.join(__dirname, tempDir);
  console.info(folderPath);
  if (fs.existsSync(folderPath)) {
    // Lee el contenido de la carpeta
    fs.readdir(folderPath, (err, files) => {
      if (err) {
        console.error('Error leyendo la carpeta:', err);
        return;
      }

      // Elimina cada archivo dentro de la carpeta
      files.forEach((file) => {
        const filePath = path.join(folderPath, file);

        // Verifica si es un archivo antes de intentar eliminarlo
        fs.stat(filePath, (err, stats) => {
          if (err) {
            console.error('Error obteniendo información del archivo:', err);
            return;
          }

          if (stats.isFile()) {
            fs.unlink(filePath, (err) => {
              if (err) {
                console.error('Error eliminando el archivo:', err);
              } else {
                console.log(`Archivo eliminado: ${file}`);
              }
            });
          }
        });
      });
    });
  } else {
    console.error(`La carpeta "${folderPath}" no existe.`);
  }
}


/**
 * te crea un archivo json/data.json
 * @param { string } fileName - nombre que se le dara al file
 * @param { Record<string, any> | Array<any> } data
 * @returns {void} no retorna algo
 */
const createJSON = (fileName, data) => {
  const jsonDATA = JSON.stringify(data, null, 2);
  fs.writeFile(`./json/${fileName}.json`, jsonDATA, (err) => {
    if (err) {
      console.error("createJSON ERROR - ", err);
    } else {
      console.info("JSON created successfully");
    }
  });
}

/**
 * Buscar la coleccion en Strapi 
 * 
 * @param { string } endpoint
 * @returns { Promise< Array<any> > } Retorna una lista de la collecion
 */
const findCollection = async (endpoint) => {
  try {
    const response = await instance().get(`/${endpoint}`);
    return response;
  } catch (error) {
    if (error.response) {
      console.error('Error en la respuesta de la API:', error.response.data);
    } else {
      console.error('Error durante la solicitud:', error.message);
    }
  }
};

/**
 * Buscar la coleccion en Strapi 
 * 
 * @param { string } endpoint
 * @param { Array<any> } data - lista de any
 * @returns { Promise< any > } Retorna un mensaje
 */
const updateCollections = async (endpoint, data) => {
  try {
    const response = await instance().post(`/${endpoint}`, data);
    return response;
  } catch (error) {
    if (error.response) {
      console.error('Error en la respuesta de la API:', error.response.data);
    } else {
      console.error('Error durante la solicitud:', error.message);
    }
  }
};

module.exports = {
  slugify,
  getRecords,
  getDtaFromJSON,
  sendData,
  updateData,
  downloadImage,
  uploadImage,
  cleanUpTempImages,
  createJSON,
  findCollection,
  updateCollections,
}