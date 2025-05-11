const { getRecords } = require('./functions');

(async () => {
  try {
    const temp = await getRecords(
      "posts",
      (row, records) => {
        const data = {
          titulo: row["Título del artículo de Blog"].trim(),
          slug: `${row["Slug"]}`.trim(),
          createdOn: row["Created On"],
        };

        records.push(data);
      }
    );

    const sortedData = temp.sort((a, b) => new Date(b.createdOn) - new Date(a.createdOn));
    const newestItem = sortedData[0];
    console.info(newestItem);

    // cleanUpTempImages();
  } catch (error) {
    console.error('POSTS - Error:', error.message);
  }
})();