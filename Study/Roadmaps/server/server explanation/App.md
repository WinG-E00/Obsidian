# App

**App** es el archivo donde se crea y configura la aplicación que procesará las peticiones del servidor. En él se importan las dependencias, se configuran los middlewares y se conectan las rutas.

También puede incluir el código para iniciar el servidor mediante `app.listen()`, aunque ese arranque puede estar separado en otro archivo, como `server.js` o `index.js`.

- **Configurar la aplicación:** preparar cómo procesará las peticiones.
- **Iniciar el servidor:** ponerlo a escuchar en un puerto.
