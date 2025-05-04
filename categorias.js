const axios = require('axios');

const { getRecords, sendData } = require('./functions');


(async () => {
  try {
    const records = await getRecords(
        "categorias",
        (row, records) => {
            records.push({
                nombre: row["Nombre"].trim(),
                color: row["Color"].trim(),
            });
        }
    );
    console.info(records);
    await sendData(records, "categorias");
  } catch (error) {
    console.error('Error:', error.message);
  }
})();