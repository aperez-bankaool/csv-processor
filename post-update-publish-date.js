const { findCollection, getRecords, createJSON, getDtaFromJSON, updateCollections } = require('./functions');

(async () => {
  try {
    const { items } = await findCollection("blog-posts?page=1&size=150");

    const records = await getRecords(
      "posts",
      (row, records) => {
        records.push({
          createdOn: new Date(row["Created On"]),
          updatedOn: new Date(row["Updated On"]),
          publishOn: new Date(row["Fecha de publicación"]),
          slug: row["Slug"],
        });
      }
    );

    const blogPost = items.map(({ blog, documentId }) => {
      const item = records.find(({ slug }) => slug === blog);
      return {
        documentId,
        blog,
        ...item
      }
    });

    createJSON("blog-posts-currents", blogPost);

    // const blogPost = await getDtaFromJSON("blog-posts-currents");

    // console.info("sending array data");
    // const res = await updateCollections("blog-posts/update-dates", blogPost);
    // console.info("response")
    // console.info(res)

  } catch (error) {
    console.error('POSTS - Error:', error.message);
  }
})();