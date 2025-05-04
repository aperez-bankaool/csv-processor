const fs = require('fs');
const csv = require('csv-parser');
const axios = require('axios');
const path = require('path');
const fse = require('fs-extra'); // Para manejar el sistema de archivos
const FormData = require("form-data");

const csvFilePath = 'csv/autors.csv';
const tempDir = 'temp-images';
const records = [];

const delay = (ms) => new Promise(resolve => setTimeout(resolve, ms));

const getFilePath = (fileName) => path.join(__dirname, tempDir, fileName);

// Función para descargar una imagen
const descargarImagen = async (url, filename) => {
  try {
    const response = await axios({
      url,
      method: 'GET',
      responseType: 'stream',
    });

    const filePath = path.join(tempDir, filename);
    await fse.ensureDir(tempDir); // Asegurar que el directorio existe

    const writer = fs.createWriteStream(filePath);
    response.data.pipe(writer);

    return new Promise((resolve, reject) => {
      writer.on('finish', () => resolve(filePath));
      writer.on('error', reject);
    });
  } catch (error) {
    console.error(`Error al descargar la imagen desde ${url}:`, error.message);
    throw error;
  }
};

// Función para subir la imagen al CDN
const subirImagenACDN = async (fileName) => {
  try {
    const filePath = getFilePath(fileName);

    if (!fs.existsSync(filePath)) throw new Error(`El archivo no existe en la ruta especificada: ${filePath}`);

    // Crea un objeto FormData compatible con Node.js
    const formData = new FormData();
    formData.append('files', fs.createReadStream(filePath)); // Usar el stream del archivo
    formData.append('ref', 'api::autor.autor'); // Relación con el modelo
    formData.append('refId', 'h7e4c87p7rksqt16tjbwzp1f'); // ID de la entrada relacionada
    formData.append('field', 'foto'); // Campo relacionado donde se guarda la imagen

    // Realiza la solicitud a la API de Strapi
    const cdnResponse = await axios.post('http://localhost:1338/api/upload/', formData, {
      headers: {
        ...formData.getHeaders(), // Obtiene los encabezados correctos para multipart/form-data
      },
    });

    console.info('Respuesta del servidor:', cdnResponse.data);
    return cdnResponse.data[0]; // URL de la imagen subida
  } catch (error) {
    console.error('Error al subir la imagen al CDN:', error.message);
    throw error;
  }
};

// Función para procesar imágenes y actualizar `records`
const procesarImagenes = async (records) => {
  for (const record of records) {
    if (record.url) {
      const fileName = `${Date.now()}-${Math.random().toString(36).substring(2, 10)}.webp`;
      try {
        await descargarImagen(record.url, fileName);
        await subirImagenACDN(fileName);
        // console.info(`photoId: ${photoId}`)
        // record.url = cdnUrl; // Actualizar la URL con la del CDN
        // console.log(`Imagen procesada para ${record.nombre}: ${cdnUrl}`);
      } catch (error) {
        console.error(`Error al procesar la imagen para ${record.nombre}:`, error.message);
      } finally {
        await fse.remove(getFilePath(fileName));
      }
    }
  }
};

// Función para enviar los datos procesados a la API
const enviarDatos = async (data) => {
  try {
    const response = await axios.post('http://localhost:1338/api/autores/', { data });

  } catch (error) {
    if (error.response) {
      console.error('Error en la respuesta de la API:', error.response.data);
    } else {
      console.error('Error durante la solicitud:', error.message);
    }
  }
};

// Leer el archivo CSV, procesar imágenes y enviar datos
fs.createReadStream(csvFilePath)
  .pipe(csv())
  .on('data', (row) => {
    const data = {
      nombre: row["Nombre del autor"],
      // url: row["Foto del autor"],
    };
    if (row["Rol del autor"]) data["Rol"] = row["Rol del autor"];

    records.push(data);
  })
  .on('end', async () => {
    console.log('Contenido del archivo CSV leído:');

    // await procesarImagenes([records[0]]); // Descargar y subir imágenes al CDN
    for (const record of records) {
      console.info(record)
      await enviarDatos(record);
    }
  })
  .on('error', (error) => {
    console.error('Error al leer el archivo CSV:', error.message);
  });
