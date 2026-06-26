## Propiedades
[[body]]: Devuelve o establece el elemento `<body>` del documento actual.

[[head]]: Devuelve el elemento `<head>` del documento actual.

[[title]]: Devuelve o establece el título de la página web (el texto que se ve en la pestaña del navegador).

[[URL]]: Devuelve una cadena de texto con la URL completa de la página web actual.

[[domain]]: Devuelve o establece el dominio del servidor que sirve la página (ej: `"google.com"`).

[[referrer]]: Devuelve la URL de la página web desde la cual el usuario llegó a la página actual (el enlace de origen).

[[cookie]]: Permite leer o escribir las cookies asociadas al documento actual.

[[images]]: Devuelve una colección viva (`HTMLCollection`) con todas las etiquetas `<img>` de la página.

[[links]]: Devuelve una colección con todos los elementos `<a>` y `<area>` que tienen configurado un atributo `href`.

[[forms]]: Devuelve una colección con todos los formularios (`<form>`) presentes en el documento.

[[scripts]]: Devuelve una colección con todas las etiquetas `<script>` del documento.

[[readyState]]: Devuelve el estado de carga del documento (`"loading"`, `"interactive"` o `"complete"`).

[[designMode]]: Permite hacer que todo el documento sea editable por el usuario en la pantalla (`"on"` o `"off"`).

[[activeElement]]: Devuelve el elemento del DOM que actualmente tiene el foco del teclado o del sistema.

[[lastModified]]: Devuelve una cadena con la fecha y hora en la que el documento fue modificado por última vez.


## Metodos

[[open()]]: Abre un flujo de escritura en el documento, borrando todo su contenido actual si la página ya estaba cargada.

[[close()]]: Cierra el flujo de escritura abierto con `.open()` y fuerza al navegador a renderizar lo que se haya escrito.

[[write()]]: Escribe una cadena de texto o código HTML directamente en el flujo del documento (muy desaconsejado en desarrollo moderno).

[[writeln()]]: Idéntico a `.write()`, pero añade un carácter de salto de línea (`\n`) al final del texto.

[[hasFocus()]]: Devuelve un booleano indicando si la ventana del documento actual tiene el foco activo del usuario.

[[execCommand()]]: _(Obsoleto)_ Permite ejecutar comandos de edición de texto formateado en secciones editables (ej: poner en negrita, cursiva, etc.).