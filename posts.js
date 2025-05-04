const axios = require('axios');
const { getRecords, sendData, downloadImage, uploadImage, slugify, cleanUpTempImages, createJSON, findCollection, getDtaFromJSON } = require('./functions');

(async () => {
  try {
    // const temas = await findCollection("temas?pagination[pageSize]=100");
    // const categorias = await findCollection("categorias");
    // const { data: autores } = await findCollection("autores");

    // const temp = await getRecords(
    //   "posts",
    //   (row, records) => {
    //     const categoria = categorias.find(({ slug }) => slug === row["Categoría"]);
    //     const autor = autores.find(({ nombre }) => slugify(nombre) === row["Autor del artículo de Blog"]);
    //     const tema = temas.find(({ nombre }) => slugify(nombre) === row["Tema"]); // row["Tema"]; 
    //     const postCoverUrl = row["Portada del Post"];
    //     const coverPostArray = postCoverUrl.split("/");

    //     const data = {
    //       postCoverUrl,
    //       postCoverName: coverPostArray[coverPostArray.length - 1],
    //       titulo: row["Título del artículo de Blog"].trim(),
    //       tiempo_lect: row["Tiempo de lectura"].replace("minutos", "").trim(),
    //       slug: `${row["Slug"]}`.trim(),
    //       hasPDF: row["Tiene descargable?"] === "true",
    //       featuredPost: row["Post Destacado"] === "true",
    //       // created_at: new Date(row["Fecha de publicación"]),
    //       SEO: {
    //         // resume: row["Resumen para SEO / Social Share"],
    //         metaTitle: row["Meta titulo"],
    //         metaDescription: row["Meta descripción"],
    //       }
    //     };

    //     if (row["Tipo de Visualización"]) data["group"] = row["Tipo de Visualización"];
    //     if (tema) data["tema"] = tema.id;
    //     if (categoria) data["categoria"] = categoria.id;
    //     if (autor) data["autor"] = autor.id;

    //     if (row["Descargable"]) data["descargable"] = row["Descargable"];

    //     records.push(data);
    //   }
    // );

    //  createJSON("blog-posts-temp", temp);

    // const temp = await getDtaFromJSON("blog-posts-body-request");

    // console.info("downloading if has File")

    // const processRecords = async () => {
    //   const results = await Promise.all(
    //     temp.map(async ({ descargable, ...rest }) => {

    //       if (descargable) {
    //         const fileArray = descargable.split("/");
    //         const fileName = fileArray[fileArray.length - 1];

    //         const tempRecord = await downloadImage(
    //           [{ descargable, fileName }],
    //           {
    //             url: "descargable",
    //             fileName: "fileName",
    //             filePath: "filePath",
    //           }
    //         );

    //         const [res] = await uploadImage(
    //           tempRecord,
    //           "file",
    //           "filePath"
    //         );

    //         return { ...rest, file: res.file };
    //       }

    //       return { ...rest };
    //     })
    //   );

    //   return results;
    // };

    // const records = await processRecords();


    // console.info("downloading post cover images");

    // // dowloand cover picture
    // const newRecords = await downloadImage(
    //   records,
    //   {
    //     url: "postCoverUrl",
    //     fileName: "postCoverName",
    //     filePath: "postCoverPath",
    //   }
    // )

    // createJSON("blog-posts-body-request-download", newRecords);
    // const newRecords = await getDtaFromJSON("blog-posts-body-request-download");

    // console.info("uploading images");

    // const recordsWithFoto = await uploadImage(
    //   newRecords,
    //   "postCover",
    //   "postCoverPath"
    // );

    // createJSON("blog-posts-body-request-post-cover", recordsWithFoto);

    // console.info("sending data");

    // // send data
    // await sendData(
    //   noStored,
    //   "blog-posts",
    //   (record, data) => {
    //     record["id"] = data.id;
    //   },
    // );

    // console.info("building blog-posts-current.json file");
    // // json/blog-posts-current.json
    // createJSON("blog-posts-current", [ ...stored, ...noStored ]);

    // console.info("cleaning up temp folder");
    cleanUpTempImages();
  } catch (error) {
    console.error('POSTS - Error:', error.message);
  }
})();