const axios = require('axios');
const { getRecords, sendData, downloadImage, uploadImage, slugify, cleanUpTempImages } = require('./functions');

(async () => {
  try {
    const records = await getRecords(
      "autors",
      (row, records) => {
        const data = {
          nombre: row["Nombre del autor"].trim(),
          url: row["Foto del autor"],
          // fileName: `${Date.now()}-${Math.random().toString(36).substring(2, 10)}.webp`,
          fileName: `${slugify(row["Nombre del autor"])}.webp`,
        };

        if (row["Rol del autor"]) data["Rol"] = row["Rol del autor"];

        records.push(data);
      }
    );

    const newRecords = await downloadImage(records);
    const recordsWithFoto = await uploadImage(newRecords, "foto");

    await sendData(
      recordsWithFoto.map(({ nombre, Rol, foto }) => ({ nombre, Rol, foto })),
      "autores",
    )
    cleanUpTempImages();
  } catch (error) {
    console.error('Error:', error.message);
  }
})();