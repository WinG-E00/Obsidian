Que es como funciona? para que sirve? tipo de dato
;;
El tipo de dato **TEXT** es una ==cadena de caracteres de **longitud ilimitada**== (o con un límite técnico altísimo de hasta 1 GB en sistemas como PostgreSQL) que no requiere que definas un tamaño máximo al crear la tabla. A diferencia de `VARCHAR(n)`, aquí no tienes un "techo" que te dé error si el texto es muy largo, por lo que es la opción ideal para guardar **comentarios, descripciones, artículos o biografías** donde no sabes de antemano cuántas letras escribirá el usuario. En bases de datos modernas, usar `TEXT` tiene el mismo rendimiento que un `VARCHAR` largo, con la ventaja de que te da total **flexibilidad** para almacenar desde una sola palabra hasta un libro entero sin preocuparte por modificar la estructura de la base de datos en el futuro.
<!--SR:!2026-05-13,6,230-->


#baseDeDatos #tipos