WITH json_data AS (
  SELECT jsonb_array_elements('[
	  {
	    "documentId": "y028tuq38bhxxf90g3xa2l54",
	    "blog": "guia-completa-para-compras-seguras-en-linea",
	    "createdOn": "2024-11-23T00:50:44.000Z",
	    "updatedOn": "2025-04-07T20:30:46.000Z",
	    "publishOn": "2024-11-25T05:00:00.000Z",
	    "slug": "guia-completa-para-compras-seguras-en-linea"
	  },
	  {
	    "documentId": "mxvw1xifflty8ff4ap3hu2i6",
	    "blog": "guia-de-pago-de-impuestos-para-freelance",
	    "createdOn": "2024-11-13T23:26:05.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-15T05:00:00.000Z",
	    "slug": "guia-de-pago-de-impuestos-para-freelance"
	  },
	  {
	    "documentId": "ilf81hbhay9vz4ptlg7fuipb",
	    "blog": "guia-para-ahorrar-en-viajes-a-conciertos-y-festivales",
	    "createdOn": "2024-11-19T23:49:07.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-11-20T05:00:00.000Z",
	    "slug": "guia-para-ahorrar-en-viajes-a-conciertos-y-festivales"
	  },
	  {
	    "documentId": "bw9w9ipb69ezfen5fo8gd5q7",
	    "blog": "guia-como-comprar-una-casa-para-principiantes",
	    "createdOn": "2024-11-15T17:13:54.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-16T05:00:00.000Z",
	    "slug": "guia-como-comprar-una-casa-para-principiantes"
	  },
	  {
	    "documentId": "ihmd351uda4963neu6goubk8",
	    "blog": "guia-que-hacer-si-te-estafaron-por-internet",
	    "createdOn": "2025-01-07T16:03:20.000Z",
	    "updatedOn": "2025-04-07T20:31:14.000Z",
	    "publishOn": "2025-01-08T05:00:00.000Z",
	    "slug": "guia-que-hacer-si-te-estafaron-por-internet"
	  },
	  {
	    "documentId": "g8l0y72mxe0tl7a36943xrhy",
	    "blog": "hablemos-del-score-crediticio",
	    "createdOn": "2024-11-22T23:17:34.000Z",
	    "updatedOn": "2025-04-07T20:30:57.000Z",
	    "publishOn": "2024-11-23T05:00:00.000Z",
	    "slug": "hablemos-del-score-crediticio"
	  },
	  {
	    "documentId": "kmuo2tz6hbbevv4vlzzhzdef",
	    "blog": "hackear-habitos-4-tecnicas-psicologicas-para-mejorar-tu-salud-financiera",
	    "createdOn": "2024-11-14T23:24:14.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "hackear-habitos-4-tecnicas-psicologicas-para-mejorar-tu-salud-financiera"
	  },
	  {
	    "documentId": "isoqb05i7462vzytgax782p7",
	    "blog": "guia-completa-como-facturar-facil-y-rapido",
	    "createdOn": "2024-12-11T00:37:35.000Z",
	    "updatedOn": "2025-04-07T20:31:09.000Z",
	    "publishOn": "2024-12-15T05:00:00.000Z",
	    "slug": "guia-completa-como-facturar-facil-y-rapido"
	  },
	  {
	    "documentId": "h9taty9p184jikwwhl3wt2ve",
	    "blog": "guia-para-que-tus-finanzas-personales-no-den-cringe",
	    "createdOn": "2024-11-12T16:43:35.000Z",
	    "updatedOn": "2025-04-07T20:31:19.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "guia-para-que-tus-finanzas-personales-no-den-cringe"
	  },
	  {
	    "documentId": "wm7f2ievqw6af51ckzzyw7sr",
	    "blog": "seguridad-bancaria-en-linea-que-nadie-meta-mano-en-tu-cuenta",
	    "createdOn": "2025-04-07T22:48:43.000Z",
	    "updatedOn": "2025-04-11T17:59:09.000Z",
	    "publishOn": "2025-04-08T14:10:00.000Z",
	    "slug": "seguridad-bancaria-en-linea-que-nadie-meta-mano-en-tu-cuenta"
	  },
	  {
	    "documentId": "xcafpijl1ta4j9a7oxtb8fip",
	    "blog": "seguros-un-bien-necesario-para-tu-seguridad-financiera",
	    "createdOn": "2025-02-24T19:08:51.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2025-02-26T05:00:00.000Z",
	    "slug": "seguros-un-bien-necesario-para-tu-seguridad-financiera"
	  },
	  {
	    "documentId": "bklw54mm3vf7szc1ao0baolo",
	    "blog": "te-has-preguntado-que-es-bankaool",
	    "createdOn": "2025-03-20T17:21:29.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2025-03-20T04:00:00.000Z",
	    "slug": "te-has-preguntado-que-es-bankaool"
	  },
	  {
	    "documentId": "y7k3g35p38g4uih4uvsq2uhm",
	    "blog": "test-del-viajero-frecuente-playita-ahi-te-voy",
	    "createdOn": "2025-04-01T23:12:24.000Z",
	    "updatedOn": "2025-04-11T17:51:08.000Z",
	    "publishOn": "2025-04-04T13:00:00.000Z",
	    "slug": "test-del-viajero-frecuente-playita-ahi-te-voy"
	  },
	  {
	    "documentId": "pnh72d4gi8ht1ek6xe4l6sqw",
	    "blog": "tips-para-viajar-en-semana-santa-sin-endeudarte",
	    "createdOn": "2025-04-01T16:20:03.000Z",
	    "updatedOn": "2025-04-11T17:54:59.000Z",
	    "publishOn": "2025-04-01T14:15:00.000Z",
	    "slug": "tips-para-viajar-en-semana-santa-sin-endeudarte"
	  },
	  {
	    "documentId": "sh4uj2ph7ei8mliwkcl0xn2e",
	    "blog": "alternativas-de-inversion-encuentra-lo-que-se-adapta-a-ti",
	    "createdOn": "2024-12-11T00:15:26.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2024-12-17T05:00:00.000Z",
	    "slug": "alternativas-de-inversion-encuentra-lo-que-se-adapta-a-ti"
	  },
	  {
	    "documentId": "a7ty1zvqo439hiqa3totpjao",
	    "blog": "haz-todo-con-tu-app-movil-bankaool",
	    "createdOn": "2025-03-19T18:18:02.000Z",
	    "updatedOn": "2025-04-07T20:31:19.000Z",
	    "publishOn": "2025-03-19T04:00:00.000Z",
	    "slug": "haz-todo-con-tu-app-movil-bankaool"
	  },
	  {
	    "documentId": "jdg3jp1en26muznd17gv5bhk",
	    "blog": "sin-estres-financiero-la-clave-para-vivir-plenamente",
	    "createdOn": "2024-11-14T19:34:00.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2024-11-22T05:00:00.000Z",
	    "slug": "sin-estres-financiero-la-clave-para-vivir-plenamente"
	  },
	  {
	    "documentId": "elz71iwwscjy40yhter42azd",
	    "blog": "taylor-swift-vs-las-finanzas-personales-torturadas",
	    "createdOn": "2024-11-20T23:41:51.000Z",
	    "updatedOn": "2025-04-07T20:30:49.000Z",
	    "publishOn": "2024-12-04T05:00:00.000Z",
	    "slug": "taylor-swift-vs-las-finanzas-personales-torturadas"
	  },
	  {
	    "documentId": "p3g5k4r2kei7wumfzdl3lh84",
	    "blog": "te-has-preguntando-como-ganar-dinero-extra-aqui-te-lo-contamos",
	    "createdOn": "2024-11-15T19:20:10.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-12-30T05:00:00.000Z",
	    "slug": "te-has-preguntando-como-ganar-dinero-extra-aqui-te-lo-contamos"
	  },
	  {
	    "documentId": "d3kdtng12sb1yitovrvwi233",
	    "blog": "testamento-como-heredar-en-la-era-digital",
	    "createdOn": "2024-11-15T23:32:20.000Z",
	    "updatedOn": "2025-04-07T20:30:40.000Z",
	    "publishOn": "2024-11-18T05:00:00.000Z",
	    "slug": "testamento-como-heredar-en-la-era-digital"
	  },
	  {
	    "documentId": "o6n0bxtzu94wy0j1rhmtcqp0",
	    "blog": "tips-financieros-y-mentales-para-lidiar-con-la-cuesta-de-enero",
	    "createdOn": "2025-01-13T15:42:55.000Z",
	    "updatedOn": "2025-04-07T20:30:54.000Z",
	    "publishOn": "2025-01-14T05:00:00.000Z",
	    "slug": "tips-financieros-y-mentales-para-lidiar-con-la-cuesta-de-enero"
	  },
	  {
	    "documentId": "hiv9fpvbp67kns8cbx2qbtv0",
	    "blog": "todo-lo-que-quieres-saber-sobre-la-app-bankaool",
	    "createdOn": "2024-11-12T18:55:22.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "todo-lo-que-quieres-saber-sobre-la-app-bankaool"
	  },
	  {
	    "documentId": "von7ifq5d2mlj04n5fu8vl04",
	    "blog": "viajar-sin-limites-la-guia-definitiva-para-convertirte-en-un-globetrotter",
	    "createdOn": "2024-11-20T23:31:40.000Z",
	    "updatedOn": "2025-04-07T20:30:49.000Z",
	    "publishOn": "2024-11-27T05:00:00.000Z",
	    "slug": "viajar-sin-limites-la-guia-definitiva-para-convertirte-en-un-globetrotter"
	  },
	  {
	    "documentId": "jgxnyo6d5dkvfk8bsh0r9205",
	    "blog": "cual-es-el-mejor-banco-para-abrir-una-cuenta-empresarial-en-mexico",
	    "createdOn": "2025-01-29T01:35:23.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2025-02-01T05:00:00.000Z",
	    "slug": "cual-es-el-mejor-banco-para-abrir-una-cuenta-empresarial-en-mexico"
	  },
	  {
	    "documentId": "i3gtc0jvevxvos4mlunuajmh",
	    "blog": "cuanto-necesitas-para-independizarte-presupuesto-basico",
	    "createdOn": "2024-11-05T14:07:40.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "cuanto-necesitas-para-independizarte-presupuesto-basico"
	  },
	  {
	    "documentId": "yq4x3u5y5edqswyp36999pzy",
	    "blog": "cuantos-tipos-de-malware-hay-y-como-me-protejo-de-sus-ataques",
	    "createdOn": "2024-12-04T19:01:12.000Z",
	    "updatedOn": "2025-04-07T20:30:57.000Z",
	    "publishOn": "2024-12-04T05:00:00.000Z",
	    "slug": "cuantos-tipos-de-malware-hay-y-como-me-protejo-de-sus-ataques"
	  },
	  {
	    "documentId": "jizdtc9bouhq05ufctlkkzm9",
	    "blog": "como-hacer-inversiones-seguras-tu-guia-para-finanzas-inteligentes",
	    "createdOn": "2024-11-12T18:34:13.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "como-hacer-inversiones-seguras-tu-guia-para-finanzas-inteligentes"
	  },
	  {
	    "documentId": "trboeim98rgwwndbhjmebni4",
	    "blog": "como-hacer-un-presupuesto-personal-gestiona-tus-gastos",
	    "createdOn": "2024-12-26T22:22:11.000Z",
	    "updatedOn": "2025-04-07T20:31:04.000Z",
	    "publishOn": "2025-01-02T05:00:00.000Z",
	    "slug": "como-hacer-un-presupuesto-personal-gestiona-tus-gastos"
	  },
	  {
	    "documentId": "ir3vg25habip7qktegibm28j",
	    "blog": "demasiadas-tarjetas-credito-aprende-a-gestionarlas-correctamente",
	    "createdOn": "2024-11-22T21:04:04.000Z",
	    "updatedOn": "2025-04-07T20:30:52.000Z",
	    "publishOn": "2024-12-26T05:00:00.000Z",
	    "slug": "demasiadas-tarjetas-credito-aprende-a-gestionarlas-correctamente"
	  },
	  {
	    "documentId": "uig13vzy2k0ssjsyy0zjzkg1",
	    "blog": "deposito-bancario-en-otra-cuenta-esto-es-lo-que-debes-hacer",
	    "createdOn": "2025-04-07T19:04:40.000Z",
	    "updatedOn": "2025-04-11T17:50:31.000Z",
	    "publishOn": "2025-04-07T13:00:00.000Z",
	    "slug": "deposito-bancario-en-otra-cuenta-esto-es-lo-que-debes-hacer"
	  },
	  {
	    "documentId": "y8ni7oxsehmequ37gx5181y3",
	    "blog": "listo-para-el-desafio-asi-es-el-crecimiento-del-comercio-electronico-en-las-pymes",
	    "createdOn": "2024-11-22T22:52:39.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "listo-para-el-desafio-asi-es-el-crecimiento-del-comercio-electronico-en-las-pymes"
	  },
	  {
	    "documentId": "t5zd8j2yf8u5v5yzh9c3hc90",
	    "blog": "que-es-el-gat-y-como-influye-en-nuestras-inversiones",
	    "createdOn": "2025-03-25T15:28:52.000Z",
	    "updatedOn": "2025-04-11T17:56:09.000Z",
	    "publishOn": "2025-03-25T13:10:00.000Z",
	    "slug": "que-es-el-gat-y-como-influye-en-nuestras-inversiones"
	  },
	  {
	    "documentId": "bbnadb22a2wgufwbb9g1puoi",
	    "blog": "impulsando-a-artistas-emergentes-con-artbank",
	    "createdOn": "2025-04-01T21:18:31.000Z",
	    "updatedOn": "2025-04-11T17:54:22.000Z",
	    "publishOn": "2025-04-03T15:10:00.000Z",
	    "slug": "impulsando-a-artistas-emergentes-con-artbank"
	  },
	  {
	    "documentId": "wu9n9acjfet1pzmh7x5z9ekf",
	    "blog": "inversion-para-principiantes-empieza-con-poco-dinero",
	    "createdOn": "2024-11-16T00:31:34.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2024-12-13T05:00:00.000Z",
	    "slug": "inversion-para-principiantes-empieza-con-poco-dinero"
	  },
	  {
	    "documentId": "jbue02e41ydyxikl1irots2d",
	    "blog": "la-ia-en-la-banca-en-mexico-como-construir-desde-el-lado-mas-humano",
	    "createdOn": "2024-11-05T14:27:04.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-12-03T05:00:00.000Z",
	    "slug": "la-ia-en-la-banca-en-mexico-como-construir-desde-el-lado-mas-humano"
	  },
	  {
	    "documentId": "g3gury51wv49zvnwgiyqbjs8",
	    "blog": "los-12-arquetipos-de-jung-en-el-mundo-financiero",
	    "createdOn": "2024-11-22T23:53:31.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "los-12-arquetipos-de-jung-en-el-mundo-financiero"
	  },
	  {
	    "documentId": "jt55cf9onvl6zp1ze50y5jqw",
	    "blog": "montadeudas-no-creas-en-prestamos-magicos",
	    "createdOn": "2025-02-11T00:08:17.000Z",
	    "updatedOn": "2025-04-07T20:31:01.000Z",
	    "publishOn": "2025-02-13T05:00:00.000Z",
	    "slug": "montadeudas-no-creas-en-prestamos-magicos"
	  },
	  {
	    "documentId": "xeme49io9n529qrbmy0c40rk",
	    "blog": "no-confundas-mas-fecha-de-corte-y-fecha-limite-de-pago",
	    "createdOn": "2024-11-11T16:42:49.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2024-11-30T05:00:00.000Z",
	    "slug": "no-confundas-mas-fecha-de-corte-y-fecha-limite-de-pago"
	  },
	  {
	    "documentId": "a762olv5apu0tamrajqviqa3",
	    "blog": "peliculas-navidenas-con-lecciones-financieras-que-lo-cambian-todo",
	    "createdOn": "2024-12-13T18:53:43.000Z",
	    "updatedOn": "2025-04-07T20:31:15.000Z",
	    "publishOn": "2025-01-11T05:00:00.000Z",
	    "slug": "peliculas-navidenas-con-lecciones-financieras-que-lo-cambian-todo"
	  },
	  {
	    "documentId": "dt32qu8ej340s7y8dztv2m74",
	    "blog": "portabilidad-de-nomina-la-mejor-opcion-cuando-tu-banco-te-incomoda",
	    "createdOn": "2025-04-14T19:47:07.000Z",
	    "updatedOn": "2025-04-14T20:51:42.000Z",
	    "publishOn": "2025-04-14T15:15:00.000Z",
	    "slug": "portabilidad-de-nomina-la-mejor-opcion-cuando-tu-banco-te-incomoda"
	  },
	  {
	    "documentId": "pz661qrfiwpabfirhjmf9m5i",
	    "blog": "prepara-tu-presupuesto-navideno-a-tiempo",
	    "createdOn": "2024-11-05T14:22:21.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2025-01-13T05:00:00.000Z",
	    "slug": "prepara-tu-presupuesto-navideno-a-tiempo"
	  },
	  {
	    "documentId": "tdc7bqn9airscvuvh2jkbxhm",
	    "blog": "protege-a-tus-adultos-mayores-contra-el-fraude",
	    "createdOn": "2024-11-16T00:16:29.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2024-11-25T05:00:00.000Z",
	    "slug": "protege-a-tus-adultos-mayores-contra-el-fraude"
	  },
	  {
	    "documentId": "aysez5iurd7ibo8q4hj0wio4",
	    "blog": "retira-sin-comisiones-con-bankaool",
	    "createdOn": "2024-11-07T21:39:33.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "retira-sin-comisiones-con-bankaool"
	  },
	  {
	    "documentId": "jinolp5fw8xveehxtwk7dqo8",
	    "blog": "salud-financiera-en-mexico-con-que-se-come",
	    "createdOn": "2025-03-03T22:51:47.000Z",
	    "updatedOn": "2025-04-07T20:31:15.000Z",
	    "publishOn": "2025-03-05T05:00:00.000Z",
	    "slug": "salud-financiera-en-mexico-con-que-se-come"
	  },
	  {
	    "documentId": "f4pvag8dx2uiz36gx7ja35wl",
	    "blog": "tu-banca-digital-es-tu-tesoro-cuidala-de-fraudes-financieros",
	    "createdOn": "2024-11-07T21:53:51.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-13T05:00:00.000Z",
	    "slug": "tu-banca-digital-es-tu-tesoro-cuidala-de-fraudes-financieros"
	  },
	  {
	    "documentId": "wxhw8ye7hpem6k6k84lrzkha",
	    "blog": "nuevas-oportunidades-de-inversion-comics-cartas-y-figuras-coleccionables-como-activos",
	    "createdOn": "2024-11-29T16:56:56.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-11-29T05:00:00.000Z",
	    "slug": "nuevas-oportunidades-de-inversion-comics-cartas-y-figuras-coleccionables-como-activos"
	  },
	  {
	    "documentId": "nj1h5zu0fj40okkh1z5ngzhv",
	    "blog": "inversiones-financieras-a-largo-plazo-vs-corto-plazo-cual-es-la-mejor-opcion",
	    "createdOn": "2025-02-18T02:52:13.000Z",
	    "updatedOn": "2025-04-07T20:30:50.000Z",
	    "publishOn": "2025-02-22T05:00:00.000Z",
	    "slug": "inversiones-financieras-a-largo-plazo-vs-corto-plazo-cual-es-la-mejor-opcion"
	  },
	  {
	    "documentId": "h0s1hc1zvvkwps5sog0e0hwn",
	    "blog": "junk-journal-un-control-creativo-de-gastos",
	    "createdOn": "2025-01-07T15:50:08.000Z",
	    "updatedOn": "2025-04-07T20:30:58.000Z",
	    "publishOn": "2025-01-07T05:00:00.000Z",
	    "slug": "junk-journal-un-control-creativo-de-gastos"
	  },
	  {
	    "documentId": "q7hxe4k939wyib5pvmj875uv",
	    "blog": "kidults-y-juguetes-de-coleccion-como-evitar-compras-impulsivas",
	    "createdOn": "2024-11-28T04:17:11.000Z",
	    "updatedOn": "2025-04-07T20:30:54.000Z",
	    "publishOn": "2024-11-28T05:00:00.000Z",
	    "slug": "kidults-y-juguetes-de-coleccion-como-evitar-compras-impulsivas"
	  },
	  {
	    "documentId": "j62eob8u7ryo669mjnenod7w",
	    "blog": "la-ciberseguridad-es-la-base-de-tu-tranquilidad-financiera",
	    "createdOn": "2025-04-09T16:33:02.000Z",
	    "updatedOn": "2025-04-11T19:35:07.000Z",
	    "publishOn": "2025-04-09T14:30:00.000Z",
	    "slug": "la-ciberseguridad-es-la-base-de-tu-tranquilidad-financiera"
	  },
	  {
	    "documentId": "o9qnw36jsdo2ov2w8dygvsm0",
	    "blog": "la-economia-del-chocolate-en-mexico-como-emprender-un-negocio",
	    "createdOn": "2024-11-22T20:52:46.000Z",
	    "updatedOn": "2025-04-07T20:30:40.000Z",
	    "publishOn": "2024-11-23T05:00:00.000Z",
	    "slug": "la-economia-del-chocolate-en-mexico-como-emprender-un-negocio"
	  },
	  {
	    "documentId": "r35icc07f7igcgpn1er4t0mg",
	    "blog": "la-llegada-de-un-banco-valiente-a-cdmx",
	    "createdOn": "2024-11-07T20:36:06.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-29T05:00:00.000Z",
	    "slug": "la-llegada-de-un-banco-valiente-a-cdmx"
	  },
	  {
	    "documentId": "oi43sgwqfd82tt1vdagcsyd9",
	    "blog": "la-mejor-epoca-para-viajar-a-europa-5-destinos-asequibles-que-no-te-querras-perder",
	    "createdOn": "2024-11-25T23:13:00.000Z",
	    "updatedOn": "2025-04-07T20:31:01.000Z",
	    "publishOn": "2024-11-27T05:00:00.000Z",
	    "slug": "la-mejor-epoca-para-viajar-a-europa-5-destinos-asequibles-que-no-te-querras-perder"
	  },
	  {
	    "documentId": "xwwymo1qwwkj93ezm1pvcakx",
	    "blog": "lecciones-bien-michis-de-como-cuidar-tu-dinero",
	    "createdOn": "2025-03-25T16:46:03.000Z",
	    "updatedOn": "2025-04-11T17:57:56.000Z",
	    "publishOn": "2025-03-27T17:45:00.000Z",
	    "slug": "lecciones-bien-michis-de-como-cuidar-tu-dinero"
	  },
	  {
	    "documentId": "cl7nyaf4p7s1od6fzlhcwljw",
	    "blog": "los-retos-de-emprender-con-tus-amigos",
	    "createdOn": "2024-11-14T17:54:40.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2024-11-18T05:00:00.000Z",
	    "slug": "los-retos-de-emprender-con-tus-amigos"
	  },
	  {
	    "documentId": "atevdmxbtzawc6rakgcjh3j2",
	    "blog": "mantenimiento-de-auto-y-otros-gastos-que-quiza-no-has-considerado",
	    "createdOn": "2025-03-12T03:19:10.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2025-03-17T04:00:00.000Z",
	    "slug": "mantenimiento-de-auto-y-otros-gastos-que-quiza-no-has-considerado"
	  },
	  {
	    "documentId": "tp302y486uptdrwc11knvgpz",
	    "blog": "un-pase-libre-al-empoderamiento-femenino-en-el-futbol-arte-y-deporte-como-espacios-de-cambio-en-cruz-azul",
	    "createdOn": "2025-03-18T19:16:23.000Z",
	    "updatedOn": "2025-04-07T20:31:09.000Z",
	    "publishOn": "2025-03-19T04:00:00.000Z",
	    "slug": "un-pase-libre-al-empoderamiento-femenino-en-el-futbol-arte-y-deporte-como-espacios-de-cambio-en-cruz-azul"
	  },
	  {
	    "documentId": "unipi3ysuv292wtlve5o22wp",
	    "blog": "valientes-como-superan-sus-problemas-financieros",
	    "createdOn": "2024-11-29T03:33:09.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2024-12-04T05:00:00.000Z",
	    "slug": "valientes-como-superan-sus-problemas-financieros"
	  },
	  {
	    "documentId": "i6ma8i5rpouwprv26x43tgq5",
	    "blog": "tendencias-de-consumo-que-no-puedes-ignorar-el-futuro-de-las-compras-grandes",
	    "createdOn": "2024-12-02T23:28:30.000Z",
	    "updatedOn": "2025-04-07T20:30:47.000Z",
	    "publishOn": "2024-12-06T05:00:00.000Z",
	    "slug": "tendencias-de-consumo-que-no-puedes-ignorar-el-futuro-de-las-compras-grandes"
	  },
	  {
	    "documentId": "dbmiezhdvt8dw5subvswc9dn",
	    "blog": "bankaool-es-confiable-para-tus-finanzas-si-conocenos",
	    "createdOn": "2024-12-26T17:42:18.000Z",
	    "updatedOn": "2025-04-07T20:30:54.000Z",
	    "publishOn": "2024-12-27T05:00:00.000Z",
	    "slug": "bankaool-es-confiable-para-tus-finanzas-si-conocenos"
	  },
	  {
	    "documentId": "se98mj5hr3hwt670xjddobgh",
	    "blog": "cual-es-el-mejor-credito-para-microempresas-descubre-las-opciones-que-te-ofrecemos-en-bankaool",
	    "createdOn": "2024-12-14T19:52:11.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-12-14T05:00:00.000Z",
	    "slug": "cual-es-el-mejor-credito-para-microempresas-descubre-las-opciones-que-te-ofrecemos-en-bankaool"
	  },
	  {
	    "documentId": "gdemcvz62izyybj1t0wbgn9e",
	    "blog": "por-que-tu-negocio-necesita-una-tpv",
	    "createdOn": "2024-11-28T04:11:48.000Z",
	    "updatedOn": "2025-04-07T20:30:47.000Z",
	    "publishOn": "2024-12-05T05:00:00.000Z",
	    "slug": "por-que-tu-negocio-necesita-una-tpv"
	  },
	  {
	    "documentId": "kw1wpmft5akmdou99gryjdor",
	    "blog": "que-es-buro-de-credito",
	    "createdOn": "2024-11-21T19:12:20.000Z",
	    "updatedOn": "2025-04-07T20:30:59.000Z",
	    "publishOn": "2024-11-22T05:00:00.000Z",
	    "slug": "que-es-buro-de-credito"
	  },
	  {
	    "documentId": "f2mb2vxgr3fhmr2sng64j0dw",
	    "blog": "millennials-y-generacion-z-los-une-la-amsiedad-por-sus-finanzas",
	    "createdOn": "2024-11-25T03:10:35.000Z",
	    "updatedOn": "2025-04-07T20:31:01.000Z",
	    "publishOn": "2024-11-28T05:00:00.000Z",
	    "slug": "millennials-y-generacion-z-los-une-la-amsiedad-por-sus-finanzas"
	  },
	  {
	    "documentId": "f4v290prh2p802i0ju9phinr",
	    "blog": "alexis-rosales-y-daniel-hidalgo",
	    "createdOn": "2024-11-28T23:34:45.000Z",
	    "updatedOn": "2025-04-07T20:30:55.000Z",
	    "publishOn": "2024-11-28T05:00:00.000Z",
	    "slug": "alexis-rosales-y-daniel-hidalgo"
	  },
	  {
	    "documentId": "y3jxnxj1cfh1avqb7p1x9vw7",
	    "blog": "estres-financiero-alivialo-con-educacion-financiera",
	    "createdOn": "2024-12-11T19:18:12.000Z",
	    "updatedOn": "2025-04-07T20:30:56.000Z",
	    "publishOn": "2024-12-11T05:00:00.000Z",
	    "slug": "estres-financiero-alivialo-con-educacion-financiera"
	  },
	  {
	    "documentId": "i504dhj2wzpayk1uc6ivd9p0",
	    "blog": "que-es-el-isr-y-que-puedo-hacer-para-que-me-devuelvan-impuestos",
	    "createdOn": "2025-04-07T23:00:16.000Z",
	    "updatedOn": "2025-04-11T17:47:18.000Z",
	    "publishOn": "2025-04-09T15:00:00.000Z",
	    "slug": "que-es-el-isr-y-que-puedo-hacer-para-que-me-devuelvan-impuestos"
	  },
	  {
	    "documentId": "gvojn5s5s76lmscs4nbfized",
	    "blog": "3-apps-para-gestionar-finanzas-de-una-forma-simple-transparente-y-digital",
	    "createdOn": "2024-11-07T23:03:40.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "3-apps-para-gestionar-finanzas-de-una-forma-simple-transparente-y-digital"
	  },
	  {
	    "documentId": "z0b18zb8ngh1foazrcwjtd91",
	    "blog": "3-lecciones-de-economia-que-aprendimos-en-minecraft",
	    "createdOn": "2024-11-14T18:58:08.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-27T05:00:00.000Z",
	    "slug": "3-lecciones-de-economia-que-aprendimos-en-minecraft"
	  },
	  {
	    "documentId": "dawiy1n47wfa295d8zamklty",
	    "blog": "5-consejos-financieros-de-nuestros-abuelos",
	    "createdOn": "2024-11-23T00:11:38.000Z",
	    "updatedOn": "2025-04-07T20:30:43.000Z",
	    "publishOn": "2024-11-25T05:00:00.000Z",
	    "slug": "5-consejos-financieros-de-nuestros-abuelos"
	  },
	  {
	    "documentId": "nmbccya9hn6819qdeotiat46",
	    "blog": "5-consejos-financieros-que-nos-enseno-kiki-entregas-a-domicilio",
	    "createdOn": "2024-11-21T18:40:25.000Z",
	    "updatedOn": "2025-04-07T20:30:55.000Z",
	    "publishOn": "2024-11-25T05:00:00.000Z",
	    "slug": "5-consejos-financieros-que-nos-enseno-kiki-entregas-a-domicilio"
	  },
	  {
	    "documentId": "yyhrys1ajh23ma9dq417u44a",
	    "blog": "5-consejos-para-administrar-las-finanzas-de-tu-negocio-como-neni",
	    "createdOn": "2025-02-24T22:20:20.000Z",
	    "updatedOn": "2025-04-07T20:30:54.000Z",
	    "publishOn": "2025-03-03T05:00:00.000Z",
	    "slug": "5-consejos-para-administrar-las-finanzas-de-tu-negocio-como-neni"
	  },
	  {
	    "documentId": "n3pu244q84nyf5onfi5edtrf",
	    "blog": "amor-fraudulento-estafas-en-apps-de-citas",
	    "createdOn": "2025-02-14T15:45:25.000Z",
	    "updatedOn": "2025-04-07T20:30:47.000Z",
	    "publishOn": "2025-02-14T05:00:00.000Z",
	    "slug": "amor-fraudulento-estafas-en-apps-de-citas"
	  },
	  {
	    "documentId": "iuloon0bmqwogmq627q75p2q",
	    "blog": "aprende-la-diferencia-entre-banca-movil-y-banca-por-internet-cual-es-mejor-para-ti",
	    "createdOn": "2024-11-29T17:34:19.000Z",
	    "updatedOn": "2025-04-07T20:30:52.000Z",
	    "publishOn": "2024-11-30T05:00:00.000Z",
	    "slug": "aprende-la-diferencia-entre-banca-movil-y-banca-por-internet-cual-es-mejor-para-ti"
	  },
	  {
	    "documentId": "hg4o7k1r5ul05w6tursmzg48",
	    "blog": "bancos-tradicionales-vs-fintechs-10-diferencias-cruciales",
	    "createdOn": "2024-11-08T23:13:03.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "bancos-tradicionales-vs-fintechs-10-diferencias-cruciales"
	  },
	  {
	    "documentId": "zqb0vzymo3km5azxfvmg9xbt",
	    "blog": "bankaool-sucursales-cada-dia-mas-cerca-de-ti",
	    "createdOn": "2025-03-25T16:29:18.000Z",
	    "updatedOn": "2025-04-11T17:55:36.000Z",
	    "publishOn": "2025-03-26T16:29:00.000Z",
	    "slug": "bankaool-sucursales-cada-dia-mas-cerca-de-ti"
	  },
	  {
	    "documentId": "zt0gpvl7dd7shqju4wigf74q",
	    "blog": "bankaool-innovando-la-cultura-laboral-todos-los-dias",
	    "createdOn": "2024-11-05T14:14:03.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-12-02T05:00:00.000Z",
	    "slug": "bankaool-innovando-la-cultura-laboral-todos-los-dias"
	  },
	  {
	    "documentId": "crqjkrdk8drsl9uecq8odkms",
	    "blog": "bankaool-sin-comision-por-retiro-de-efectivo",
	    "createdOn": "2024-11-28T04:06:24.000Z",
	    "updatedOn": "2025-04-07T20:30:50.000Z",
	    "publishOn": "2025-02-04T05:00:00.000Z",
	    "slug": "bankaool-sin-comision-por-retiro-de-efectivo"
	  },
	  {
	    "documentId": "fdtg4xf218maw40940615f5y",
	    "blog": "blindaje-digital-protegete-de-los-fraudes-financieros",
	    "createdOn": "2024-11-07T22:00:24.000Z",
	    "updatedOn": "2025-04-07T20:31:19.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "blindaje-digital-protegete-de-los-fraudes-financieros"
	  },
	  {
	    "documentId": "czwfqegj3r9b797fi9maqk37",
	    "blog": "bono-verde-inversiones-con-impacto-en-el-medio-ambiente",
	    "createdOn": "2025-03-20T17:29:23.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2025-03-21T04:00:00.000Z",
	    "slug": "bono-verde-inversiones-con-impacto-en-el-medio-ambiente"
	  },
	  {
	    "documentId": "lwghzdm3ikofpibnedhkna60",
	    "blog": "comprar-o-rentar-casa-que-te-conviene-mas",
	    "createdOn": "2024-11-26T18:44:42.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "comprar-o-rentar-casa-que-te-conviene-mas"
	  },
	  {
	    "documentId": "z73wx5d0f9hnmenm91l3szr6",
	    "blog": "conoce-mi-credito-nomina-bankaool",
	    "createdOn": "2025-04-01T21:45:54.000Z",
	    "updatedOn": "2025-04-11T17:53:42.000Z",
	    "publishOn": "2025-04-02T16:10:00.000Z",
	    "slug": "conoce-mi-credito-nomina-bankaool"
	  },
	  {
	    "documentId": "ptw8qdn5qr5aouz05zjvrqub",
	    "blog": "consejos-para-aprovechar-al-maximo-tu-aguinaldo",
	    "createdOn": "2024-11-14T19:03:40.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-20T05:00:00.000Z",
	    "slug": "consejos-para-aprovechar-al-maximo-tu-aguinaldo"
	  },
	  {
	    "documentId": "unspvgvu8nda3fw8u7pz1td5",
	    "blog": "consejos-para-aprovechar-el-black-friday-no-te-pierdas-las-mejores-ofertas",
	    "createdOn": "2024-11-21T03:14:33.000Z",
	    "updatedOn": "2025-04-07T20:30:51.000Z",
	    "publishOn": "2024-11-29T05:00:00.000Z",
	    "slug": "consejos-para-aprovechar-el-black-friday-no-te-pierdas-las-mejores-ofertas"
	  },
	  {
	    "documentId": "zq7zrzku5z2gmves3jfhssdi",
	    "blog": "construir-mi-fondo-de-emergencia",
	    "createdOn": "2024-11-12T17:05:49.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-21T05:00:00.000Z",
	    "slug": "construir-mi-fondo-de-emergencia"
	  },
	  {
	    "documentId": "uyc2w1uo3wvoc1313yb97cth",
	    "blog": "cronica-futbolera-desde-el-palco-vip-bankaool-del-estadio-azul",
	    "createdOn": "2025-02-24T19:28:19.000Z",
	    "updatedOn": "2025-04-07T20:31:15.000Z",
	    "publishOn": "2025-03-04T05:00:00.000Z",
	    "slug": "cronica-futbolera-desde-el-palco-vip-bankaool-del-estadio-azul"
	  },
	  {
	    "documentId": "rp71fuikfb8j49adirwvx8rd",
	    "blog": "como-administrar-el-dinero-3-tips-para-ser-el-mas-pro-en-tus-finanzas",
	    "createdOn": "2025-02-18T16:18:28.000Z",
	    "updatedOn": "2025-04-07T20:31:14.000Z",
	    "publishOn": "2025-02-21T05:00:00.000Z",
	    "slug": "como-administrar-el-dinero-3-tips-para-ser-el-mas-pro-en-tus-finanzas"
	  },
	  {
	    "documentId": "il0cqbwdqhftcv47zmfesb38",
	    "blog": "como-administrar-mi-dinero-como-freelance-los-detallitos-que-nadie-me-dijo",
	    "createdOn": "2025-03-10T17:58:12.000Z",
	    "updatedOn": "2025-04-07T20:30:55.000Z",
	    "publishOn": "2025-03-10T04:00:00.000Z",
	    "slug": "como-administrar-mi-dinero-como-freelance-los-detallitos-que-nadie-me-dijo"
	  },
	  {
	    "documentId": "dhenvvnr1n9c7s5n1l2frl7n",
	    "blog": "como-aprender-educacion-financiera-desde-cero",
	    "createdOn": "2025-01-15T18:08:45.000Z",
	    "updatedOn": "2025-04-07T20:30:58.000Z",
	    "publishOn": "2025-01-17T05:00:00.000Z",
	    "slug": "como-aprender-educacion-financiera-desde-cero"
	  },
	  {
	    "documentId": "ixx3ezervc6o1w0zei7zxbag",
	    "blog": "como-elegir-la-mejor-afore",
	    "createdOn": "2024-12-23T23:51:49.000Z",
	    "updatedOn": "2025-04-07T20:30:55.000Z",
	    "publishOn": "2025-01-06T05:00:00.000Z",
	    "slug": "como-elegir-la-mejor-afore"
	  },
	  {
	    "documentId": "oqtbcyennegmq81y986fioid",
	    "blog": "como-establecer-metas-con-el-metodo-smart",
	    "createdOn": "2025-01-02T16:13:34.000Z",
	    "updatedOn": "2025-04-07T20:30:55.000Z",
	    "publishOn": "2025-01-03T05:00:00.000Z",
	    "slug": "como-establecer-metas-con-el-metodo-smart"
	  },
	  {
	    "documentId": "dc276soo5adjhtp5gz1j01j7",
	    "blog": "como-generar-ingresos-pasivos-sin-tener-que-trabajar",
	    "createdOn": "2025-02-24T19:37:52.000Z",
	    "updatedOn": "2025-04-07T20:30:56.000Z",
	    "publishOn": "2025-03-05T05:00:00.000Z",
	    "slug": "como-generar-ingresos-pasivos-sin-tener-que-trabajar"
	  },
	  {
	    "documentId": "gqtgpnf57xiaflflhaadrj3w",
	    "blog": "como-hacer-e-commerce-guia-basica-para-pequenos-empresarios",
	    "createdOn": "2025-02-04T17:35:59.000Z",
	    "updatedOn": "2025-04-07T20:31:14.000Z",
	    "publishOn": "2025-02-11T05:00:00.000Z",
	    "slug": "como-hacer-e-commerce-guia-basica-para-pequenos-empresarios"
	  },
	  {
	    "documentId": "ve9qrv5tn8imfmx9l7fz0kc6",
	    "blog": "como-la-necesidad-activa-la-creatividad-para-emprender-y-generar-ingresos",
	    "createdOn": "2025-03-15T01:17:55.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2025-03-18T04:00:00.000Z",
	    "slug": "como-la-necesidad-activa-la-creatividad-para-emprender-y-generar-ingresos"
	  },
	  {
	    "documentId": "mmz4nllj9sics57x6hyfi4iq",
	    "blog": "como-hacer-la-declaracion-anual-de-impuestos-2025",
	    "createdOn": "2025-03-13T21:26:37.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2025-03-15T04:00:00.000Z",
	    "slug": "como-hacer-la-declaracion-anual-de-impuestos-2025"
	  },
	  {
	    "documentId": "hqpdl3w1fkq7t60us67x735s",
	    "blog": "como-pagar-deudas-grandes-con-el-metodo-avalancha",
	    "createdOn": "2025-02-12T02:58:48.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2025-02-12T05:00:00.000Z",
	    "slug": "como-pagar-deudas-grandes-con-el-metodo-avalancha"
	  },
	  {
	    "documentId": "xvo20kehmz9nn9zo59v6wxgo",
	    "blog": "como-salir-de-deudas-con-el-metodo-bola-de-nieve",
	    "createdOn": "2024-11-14T00:35:11.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-16T05:00:00.000Z",
	    "slug": "como-salir-de-deudas-con-el-metodo-bola-de-nieve"
	  },
	  {
	    "documentId": "svgh2xh4ywfjt0g4u1h3k20c",
	    "blog": "como-sobrevivir-a-los-intercambios-navidenos",
	    "createdOn": "2024-12-02T23:33:30.000Z",
	    "updatedOn": "2025-04-07T20:30:51.000Z",
	    "publishOn": "2024-12-07T05:00:00.000Z",
	    "slug": "como-sobrevivir-a-los-intercambios-navidenos"
	  },
	  {
	    "documentId": "sjc8x737fkp0irvhf36z86mp",
	    "blog": "de-deudor-a-inversionista-5-consejos-para-salir-de-deudas-y-construir-tu-patrimonio",
	    "createdOn": "2024-11-16T00:59:21.000Z",
	    "updatedOn": "2025-04-07T20:30:47.000Z",
	    "publishOn": "2024-11-16T05:00:00.000Z",
	    "slug": "de-deudor-a-inversionista-5-consejos-para-salir-de-deudas-y-construir-tu-patrimonio"
	  },
	  {
	    "documentId": "bebefs2j1rd7tzrcveqmpr3k",
	    "blog": "deepfake-la-amenaza-fantasma-con-ia",
	    "createdOn": "2025-01-03T16:10:34.000Z",
	    "updatedOn": "2025-04-07T20:30:40.000Z",
	    "publishOn": "2025-01-04T05:00:00.000Z",
	    "slug": "deepfake-la-amenaza-fantasma-con-ia"
	  },
	  {
	    "documentId": "qi1tad27lv5clptmu3tu0h0h",
	    "blog": "conoce-que-tipos-de-inversionistas-existen-y-cual-es-el-tuyo",
	    "createdOn": "2025-04-14T21:05:38.000Z",
	    "updatedOn": "2025-04-15T14:45:30.000Z",
	    "publishOn": "2025-04-15T14:10:00.000Z",
	    "slug": "conoce-que-tipos-de-inversionistas-existen-y-cual-es-el-tuyo"
	  },
	  {
	    "documentId": "wpe2v3wato3haedr9bta38nv",
	    "blog": "diferir-pagos-buy-now-pay-later-vs-tarjeta-de-credito",
	    "createdOn": "2024-11-29T17:53:28.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-12-05T05:00:00.000Z",
	    "slug": "diferir-pagos-buy-now-pay-later-vs-tarjeta-de-credito"
	  },
	  {
	    "documentId": "e754niu58o46u2r7ufcv2b0n",
	    "blog": "economia-gig-como-asegurar-tu-trabajo-en-la-era-digital",
	    "createdOn": "2024-11-15T01:13:47.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-15T05:00:00.000Z",
	    "slug": "economia-gig-como-asegurar-tu-trabajo-en-la-era-digital"
	  },
	  {
	    "documentId": "u6mi9hobxw1b3jaadf5siz5n",
	    "blog": "eduacion-financiera-para-principiantes-lo-que-todos-deberiamos-de-saber",
	    "createdOn": "2025-01-06T23:54:02.000Z",
	    "updatedOn": "2025-04-07T20:30:40.000Z",
	    "publishOn": "2025-01-18T05:00:00.000Z",
	    "slug": "eduacion-financiera-para-principiantes-lo-que-todos-deberiamos-de-saber"
	  },
	  {
	    "documentId": "tt14iwzlr8bagmsskpzopfpz",
	    "blog": "ejemplo-de-emprendimiento-ben-frank-no-necesito-de-los-tiburones-para-romperla",
	    "createdOn": "2024-11-29T19:47:04.000Z",
	    "updatedOn": "2025-04-07T20:30:40.000Z",
	    "publishOn": "2024-12-02T05:00:00.000Z",
	    "slug": "ejemplo-de-emprendimiento-ben-frank-no-necesito-de-los-tiburones-para-romperla"
	  },
	  {
	    "documentId": "gs5amnsap3ueli2ef970mkkg",
	    "blog": "el-fomo-millennial-vale-lo-que-cuesta",
	    "createdOn": "2024-11-07T22:54:04.000Z",
	    "updatedOn": "2025-04-07T20:31:19.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "el-fomo-millennial-vale-lo-que-cuesta"
	  },
	  {
	    "documentId": "e4g7hjx5h5mjum22lttrf7ab",
	    "blog": "el-mito-del-ahorro-convencional",
	    "createdOn": "2024-12-16T23:45:06.000Z",
	    "updatedOn": "2025-04-07T20:31:01.000Z",
	    "publishOn": "2024-12-16T05:00:00.000Z",
	    "slug": "el-mito-del-ahorro-convencional"
	  },
	  {
	    "documentId": "citp005u7sywjerapmrgl1hz",
	    "blog": "el-papel-de-la-educacion-financiera-en-la-inclusion-financiera-toma-el-control-de-tus-finanzas",
	    "createdOn": "2025-01-07T16:13:19.000Z",
	    "updatedOn": "2025-04-07T20:31:06.000Z",
	    "publishOn": "2025-01-10T05:00:00.000Z",
	    "slug": "el-papel-de-la-educacion-financiera-en-la-inclusion-financiera-toma-el-control-de-tus-finanzas"
	  },
	  {
	    "documentId": "e8h55wjdbck6a8zmjinjt0s4",
	    "blog": "el-papel-de-los-programadores-en-el-sector-financiero",
	    "createdOn": "2024-11-25T23:21:56.000Z",
	    "updatedOn": "2025-04-07T20:30:54.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "el-papel-de-los-programadores-en-el-sector-financiero"
	  },
	  {
	    "documentId": "zn17ygcgjvydhk70bluywy3v",
	    "blog": "el-phishing-anda-suelto-en-las-redes-sociales-ten-cuidado",
	    "createdOn": "2024-11-07T18:50:31.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-14T05:00:00.000Z",
	    "slug": "el-phishing-anda-suelto-en-las-redes-sociales-ten-cuidado"
	  },
	  {
	    "documentId": "e87t2ackig0i6tv6z0ter97d",
	    "blog": "en-bankaool-el-flow-es-mantenernos-en-armonia-con-el-cambio",
	    "createdOn": "2024-11-21T17:32:08.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-11-23T05:00:00.000Z",
	    "slug": "en-bankaool-el-flow-es-mantenernos-en-armonia-con-el-cambio"
	  },
	  {
	    "documentId": "ex7a0el405rbm6ulz4qimmgo",
	    "blog": "entendiendo-los-prestamos-y-la-deuda-como-usar-el-credito-de-forma-responsable",
	    "createdOn": "2025-01-20T23:51:01.000Z",
	    "updatedOn": "2025-04-07T20:31:04.000Z",
	    "publishOn": "2025-01-21T05:00:00.000Z",
	    "slug": "entendiendo-los-prestamos-y-la-deuda-como-usar-el-credito-de-forma-responsable"
	  },
	  {
	    "documentId": "vie0o7zx6qq6i56p1bls0di4",
	    "blog": "errores-comunes-que-ponen-en-riesgo-tu-seguridad-financiera",
	    "createdOn": "2025-02-04T16:48:57.000Z",
	    "updatedOn": "2025-04-07T20:30:46.000Z",
	    "publishOn": "2025-02-04T05:00:00.000Z",
	    "slug": "errores-comunes-que-ponen-en-riesgo-tu-seguridad-financiera"
	  },
	  {
	    "documentId": "sgtjuybj44nxobrlccyiz7p5",
	    "blog": "estrategias-para-ahorrar-dinero-sin-importar-tu-sueldo-inspirate-con-los-famosos-y-tiktokers",
	    "createdOn": "2024-12-18T00:48:25.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-12-18T05:00:00.000Z",
	    "slug": "estrategias-para-ahorrar-dinero-sin-importar-tu-sueldo-inspirate-con-los-famosos-y-tiktokers"
	  },
	  {
	    "documentId": "fpv8u1wan2i01qlrojtasgr3",
	    "blog": "filosofia-e-historia-del-dinero",
	    "createdOn": "2024-11-26T17:42:09.000Z",
	    "updatedOn": "2025-04-07T20:30:49.000Z",
	    "publishOn": "2024-11-27T05:00:00.000Z",
	    "slug": "filosofia-e-historia-del-dinero"
	  },
	  {
	    "documentId": "xfk8ol8x3589b30p4w5taeb0",
	    "blog": "finanzas-personales-a-la-medida-5-basicos-para-encontrar-la-estabilidad-financiera",
	    "createdOn": "2024-11-16T00:37:21.000Z",
	    "updatedOn": "2025-04-07T20:30:40.000Z",
	    "publishOn": "2024-11-28T05:00:00.000Z",
	    "slug": "finanzas-personales-a-la-medida-5-basicos-para-encontrar-la-estabilidad-financiera"
	  },
	  {
	    "documentId": "o2k5r5cg5ujjrmlgnu96rjdp",
	    "blog": "guia-basica-de-excel-para-controlar-tus-gastos",
	    "createdOn": "2025-01-21T15:28:44.000Z",
	    "updatedOn": "2025-04-07T20:31:01.000Z",
	    "publishOn": "2025-01-31T05:00:00.000Z",
	    "slug": "guia-basica-de-excel-para-controlar-tus-gastos"
	  },
	  {
	    "documentId": "iybz3hvduuin4it47fuv53gb",
	    "blog": "guia-completa-para-abrir-tu-cuenta-digital-en-la-app-bankaool-",
	    "createdOn": "2025-03-04T21:14:57.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2025-03-11T04:00:00.000Z",
	    "slug": "guia-completa-para-abrir-tu-cuenta-digital-en-la-app-bankaool-"
	  },
	  {
	    "documentId": "peklpi0eke1cl4xkok2wvan4",
	    "blog": "finanzas-en-pareja-quien-paga-la-cuenta",
	    "createdOn": "2025-01-29T01:00:50.000Z",
	    "updatedOn": "2025-04-07T20:31:09.000Z",
	    "publishOn": "2025-01-29T05:00:00.000Z",
	    "slug": "finanzas-en-pareja-quien-paga-la-cuenta"
	  },
	  {
	    "documentId": "ainri01ihnc3im4ykb6gxzzk",
	    "blog": "fraudes-en-las-terminales-punto-de-venta",
	    "createdOn": "2024-11-26T16:51:10.000Z",
	    "updatedOn": "2025-04-07T20:30:51.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "fraudes-en-las-terminales-punto-de-venta"
	  },
	  {
	    "documentId": "fcmrhkrsoto04vawjvqfybnp",
	    "blog": "generacion-z-que-hacen-con-sus-finanzas",
	    "createdOn": "2025-01-15T17:03:26.000Z",
	    "updatedOn": "2025-04-07T20:30:56.000Z",
	    "publishOn": "2025-02-03T05:00:00.000Z",
	    "slug": "generacion-z-que-hacen-con-sus-finanzas"
	  },
	  {
	    "documentId": "lvoq2hfvf4tasccpm35lrfvc",
	    "blog": "guerra-de-tasas-como-ganar-la-batalla-de-tus-inversiones",
	    "createdOn": "2024-12-19T16:52:22.000Z",
	    "updatedOn": "2025-04-07T20:31:09.000Z",
	    "publishOn": "2024-12-20T05:00:00.000Z",
	    "slug": "guerra-de-tasas-como-ganar-la-batalla-de-tus-inversiones"
	  },
	  {
	    "documentId": "e72dhw16uf1cdpi3iskp6aue",
	    "blog": "paga-servicios-desde-donde-estes-con-la-app-de-bankaool",
	    "createdOn": "2024-11-14T18:28:02.000Z",
	    "updatedOn": "2025-04-07T20:31:19.000Z",
	    "publishOn": "2024-11-19T05:00:00.000Z",
	    "slug": "paga-servicios-desde-donde-estes-con-la-app-de-bankaool"
	  },
	  {
	    "documentId": "k8227s1d003vs0ek96y59l4f",
	    "blog": "paises-con-mejor-educacion-financiera",
	    "createdOn": "2024-12-18T00:21:15.000Z",
	    "updatedOn": "2025-04-07T20:30:52.000Z",
	    "publishOn": "2025-01-18T05:00:00.000Z",
	    "slug": "paises-con-mejor-educacion-financiera"
	  },
	  {
	    "documentId": "n4gri5gkyxfcgqq6jj7furvb",
	    "blog": "la-psicologia-financiera-como-nuestras-emociones-gobiernan-nuestras-finanzas",
	    "createdOn": "2024-11-19T23:08:12.000Z",
	    "updatedOn": "2025-04-07T20:30:41.000Z",
	    "publishOn": "2024-11-19T05:00:00.000Z",
	    "slug": "la-psicologia-financiera-como-nuestras-emociones-gobiernan-nuestras-finanzas"
	  },
	  {
	    "documentId": "r69wiy1fcdwbei3kixp967nt",
	    "blog": "que-afore-es-mejor-para-los-jovenes",
	    "createdOn": "2025-02-04T16:55:42.000Z",
	    "updatedOn": "2025-04-07T20:31:12.000Z",
	    "publishOn": "2025-02-14T05:00:00.000Z",
	    "slug": "que-afore-es-mejor-para-los-jovenes"
	  },
	  {
	    "documentId": "mfnwcf0hcvv47nxihu6n8uvs",
	    "blog": "que-hacer-con-tu-reparto-de-utilidades",
	    "createdOn": "2025-04-16T00:06:54.000Z",
	    "updatedOn": "2025-04-21T17:51:30.000Z",
	    "publishOn": "2025-04-21T13:00:00.000Z",
	    "slug": "que-hacer-con-tu-reparto-de-utilidades"
	  },
	  {
	    "documentId": "ggz7rycx6217yw9sj84aasu2",
	    "blog": "que-son-las-finanzas-personales-una-pregunta-justa-y-necesaria",
	    "createdOn": "2024-11-16T01:17:08.000Z",
	    "updatedOn": "2025-04-07T20:30:52.000Z",
	    "publishOn": "2025-01-31T05:00:00.000Z",
	    "slug": "que-son-las-finanzas-personales-una-pregunta-justa-y-necesaria"
	  },
	  {
	    "documentId": "fbar78mbstf3evd6szs5mg6m",
	    "blog": "que-son-los-gastos-hormiga-y-como-afectan-tus-finanzas",
	    "createdOn": "2024-11-23T00:23:41.000Z",
	    "updatedOn": "2025-04-07T20:30:49.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "que-son-los-gastos-hormiga-y-como-afectan-tus-finanzas"
	  },
	  {
	    "documentId": "h1ip8o77qqnpqvwgm1h442mi",
	    "blog": "red-flags-financieras-termina-tu-relacion-con-los-bancos-toxicos",
	    "createdOn": "2024-11-07T22:21:10.000Z",
	    "updatedOn": "2025-04-07T20:31:19.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "red-flags-financieras-termina-tu-relacion-con-los-bancos-toxicos"
	  },
	  {
	    "documentId": "zc55yrtef3kv99vas8xdbkxs",
	    "blog": "sabiduria-es-riqueza-los-tres-gigantes-de-la-educacion-financiera",
	    "createdOn": "2024-11-19T22:47:08.000Z",
	    "updatedOn": "2025-04-07T20:30:39.000Z",
	    "publishOn": "2024-11-19T05:00:00.000Z",
	    "slug": "sabiduria-es-riqueza-los-tres-gigantes-de-la-educacion-financiera"
	  },
	  {
	    "documentId": "lwa1iiq0me7qvjqrcibmdwv4",
	    "blog": "quihubole-con-tu-capacidad-de-pago-aprende-con-ejemplos-practicos",
	    "createdOn": "2025-01-21T21:06:08.000Z",
	    "updatedOn": "2025-04-07T20:31:18.000Z",
	    "publishOn": "2025-01-25T05:00:00.000Z",
	    "slug": "quihubole-con-tu-capacidad-de-pago-aprende-con-ejemplos-practicos"
	  },
	  {
	    "documentId": "qod1rg2je3bol29yone012la",
	    "blog": "que-es-contactless-la-nueva-forma-de-pagar-sin-contacto",
	    "createdOn": "2024-11-15T23:05:50.000Z",
	    "updatedOn": "2025-04-07T20:30:45.000Z",
	    "publishOn": "2024-11-19T05:00:00.000Z",
	    "slug": "que-es-contactless-la-nueva-forma-de-pagar-sin-contacto"
	  },
	  {
	    "documentId": "kng5vr7dzx5sp2hzp20mhccj",
	    "blog": "que-gastos-son-deducibles-de-impuestos",
	    "createdOn": "2024-11-15T20:43:33.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2024-11-29T05:00:00.000Z",
	    "slug": "que-gastos-son-deducibles-de-impuestos"
	  },
	  {
	    "documentId": "lvfo2cs1i1e1lmtk4bmu7ikp",
	    "blog": "como-aprovechar-los-cofres-digitales",
	    "createdOn": "2024-11-12T19:36:46.000Z",
	    "updatedOn": "2025-04-07T20:31:20.000Z",
	    "publishOn": "2024-11-12T05:00:00.000Z",
	    "slug": "como-aprovechar-los-cofres-digitales"
	  },
	  {
	    "documentId": "jvtt6m6d8rwst94f7pd6kkrj",
	    "blog": "como-hacer-un-plan-personal-de-retiro",
	    "createdOn": "2024-11-15T23:55:08.000Z",
	    "updatedOn": "2025-04-07T20:30:44.000Z",
	    "publishOn": "2024-11-26T05:00:00.000Z",
	    "slug": "como-hacer-un-plan-personal-de-retiro"
	  },
	  {
	    "documentId": "cyihjad16zx1ys4h9ipnkxin",
	    "blog": "como-pagar-una-tarjeta-de-credito-con-otra",
	    "createdOn": "2025-04-15T23:49:10.000Z",
	    "updatedOn": "2025-04-16T15:05:02.000Z",
	    "publishOn": "2025-04-16T15:05:00.000Z",
	    "slug": "como-pagar-una-tarjeta-de-credito-con-otra"
	  },
	  {
	    "documentId": "i93gy1epm05gtqp3psez6n0t",
	    "blog": "como-tener-un-buen-historial-crediticio",
	    "createdOn": "2025-02-11T23:36:52.000Z",
	    "updatedOn": "2025-04-07T20:31:04.000Z",
	    "publishOn": "2025-02-12T05:00:00.000Z",
	    "slug": "como-tener-un-buen-historial-crediticio"
	  },
	  {
	    "documentId": "wjflsv4bibnuo8ljdwrz28h4",
	    "blog": "donde-puedo-retirar-dinero-donde-quieras-con-bankaool",
	    "createdOn": "2025-03-25T17:23:58.000Z",
	    "updatedOn": "2025-04-11T19:32:51.000Z",
	    "publishOn": "2025-03-28T14:05:00.000Z",
	    "slug": "donde-puedo-retirar-dinero-donde-quieras-con-bankaool"
	  },
	  {
	    "documentId": "uv7vrc7sui0qqowkud62o4c2",
	    "blog": "las-empresas-fintech-promueven-la-inclusion-financiera-de-las-mujeres",
	    "createdOn": "2025-01-25T01:01:22.000Z",
	    "updatedOn": "2025-04-07T20:31:14.000Z",
	    "publishOn": "2025-01-27T05:00:00.000Z",
	    "slug": "las-empresas-fintech-promueven-la-inclusion-financiera-de-las-mujeres"
	  },
	  {
	    "documentId": "b536na9lp8orxp568jqsxetv",
	    "blog": "que-es-el-regimen-simplificado-de-confianza-resico-y-quienes-pueden-estar-en-el",
	    "createdOn": "2025-02-17T22:18:58.000Z",
	    "updatedOn": "2025-04-07T20:30:52.000Z",
	    "publishOn": "2025-02-20T05:00:00.000Z",
	    "slug": "que-es-el-regimen-simplificado-de-confianza-resico-y-quienes-pueden-estar-en-el"
	  },
	  {
	    "documentId": "aplncvurr5gvruhv7yalnqz2",
	    "blog": "que-son-las-nenis-una-opcion-de-emprendimiento",
	    "createdOn": "2025-02-17T22:01:16.000Z",
	    "updatedOn": "2025-04-07T20:31:15.000Z",
	    "publishOn": "2025-02-22T05:00:00.000Z",
	    "slug": "que-son-las-nenis-una-opcion-de-emprendimiento"
	  },
	  {
	    "documentId": "zfhhe3qeonktknd3767rxgsa",
	    "blog": "que-es-el-compra-ahora-y-paga-despues-o-buy-now-pay-later",
	    "createdOn": "2025-02-04T18:10:25.000Z",
	    "updatedOn": "2025-04-07T20:31:10.000Z",
	    "publishOn": "2025-02-10T05:00:00.000Z",
	    "slug": "que-es-el-compra-ahora-y-paga-despues-o-buy-now-pay-later"
	  },
	  {
	    "documentId": "nqjtk2bah2odtgj4k7e6x9xx",
	    "blog": "que-es-la-inflacion-economica-y-como-se-mide-guia-completa",
	    "createdOn": "2025-01-15T17:45:05.000Z",
	    "updatedOn": "2025-04-07T20:30:58.000Z",
	    "publishOn": "2025-01-16T05:00:00.000Z",
	    "slug": "que-es-la-inflacion-economica-y-como-se-mide-guia-completa"
	  },
	  {
	    "documentId": "eld8tum5zyxl3m6cewykby9o",
	    "blog": "sabes-en-que-estas-gastando-tu-dinero-conviertete-en-experto-en-el-control-de-gastos-personales",
	    "createdOn": "2024-11-29T18:28:47.000Z",
	    "updatedOn": "2025-04-07T20:31:04.000Z",
	    "publishOn": "2024-12-03T05:00:00.000Z",
	    "slug": "sabes-en-que-estas-gastando-tu-dinero-conviertete-en-experto-en-el-control-de-gastos-personales"
	  },
	  {
	    "documentId": "tug4fvqv6r1fe2d6xpwjrel4",
	    "blog": "te-despidieron-y-tienes-un-credito-que-pagar-sigue-nuestros-consejos",
	    "createdOn": "2025-01-29T01:25:02.000Z",
	    "updatedOn": "2025-04-07T20:30:53.000Z",
	    "publishOn": "2025-01-30T05:00:00.000Z",
	    "slug": "te-despidieron-y-tienes-un-credito-que-pagar-sigue-nuestros-consejos"
	  },
	  {
	    "documentId": "zflqqfeschn5tdhhq651z1vj",
	    "blog": "te-vas-de-viaje-lo-que-tienes-que-saber-sobre-las-divisas",
	    "createdOn": "2025-01-29T01:12:39.000Z",
	    "updatedOn": "2025-04-07T20:30:45.000Z",
	    "publishOn": "2025-01-30T05:00:00.000Z",
	    "slug": "te-vas-de-viaje-lo-que-tienes-que-saber-sobre-las-divisas"
	  },
	  {
	    "documentId": "f19l43q59dvgnl9pngs6tsxd",
	    "blog": "lecciones-de-finanzas-personales-que-loca-por-las-compras-nos-enseno",
	    "createdOn": "2024-11-15T01:33:30.000Z",
	    "updatedOn": "2025-04-07T20:31:17.000Z",
	    "publishOn": "2025-03-22T04:00:00.000Z",
	    "slug": "lecciones-de-finanzas-personales-que-loca-por-las-compras-nos-enseno"
	  }
	]'::jsonb) AS data
)
UPDATE blog_posts 
set 
  created_at = (data->>'createdOn')::timestamp,
  updated_at = (data->>'updatedOn')::timestamp,
  published_at = (data->>'publishOn')::timestamp
from json_data
where blog_posts.document_id = data->>'documentId'
;




WITH duplicated_posts AS (
  SELECT document_id
  FROM blog_posts
  GROUP BY document_id
  HAVING COUNT(*) = 2
),
ranked_posts AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY document_id ORDER BY published_at DESC) AS rn
  FROM blog_posts
  WHERE document_id IN (SELECT document_id FROM duplicated_posts)
)
UPDATE blog_posts
SET published_at = CASE
    WHEN ranked_posts.rn = 1 THEN ranked_posts.published_at -- Deja el valor para el registro principal
    ELSE NULL -- Pone NULL para el registro duplicado
  END
FROM ranked_posts
WHERE blog_posts.id = ranked_posts.id;
