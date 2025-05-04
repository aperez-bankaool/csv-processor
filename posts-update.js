const axios = require('axios');
const { getRecords, sendData, downloadImage, uploadImage, slugify, cleanUpTempImages, createJSON, findCollection, getDtaFromJSON, updateData } = require('./functions');

(async () => {
  try {

    const records = (await getDtaFromJSON("blog-posts-csv-json")).map(({ documentId, contents }) => ({
      documentId, contents
    }));

    // console.info( records[0] );
    await updateData(records, "blog-posts");
    
    // console.info("cleaning up temp folder");
    // cleanUpTempImages();
  } catch (error) {
    console.error('POSTS - Error:', error.message);
  }
})();