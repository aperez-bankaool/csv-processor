const axios = require('axios');

const { getRecords, sendData } = require('./functions');


(async () => {
  try {
    const records = await getRecords(
        "temas",
        (row, records) => {
            records.push({
                nombre: `${row["Nombre"]}`.trim(),
            });
        }
    );
    await sendData(records, "temas");
  } catch (error) {
    console.error('Error:', error.message);
  }
})();