# cors

## ¿Qué es?

**CORS** es el mecanismo que permite al servidor indicar desde qué orígenes el JavaScript del navegador puede leer sus respuestas. La librería **cors** configura esos permisos mediante encabezados de respuesta.

Un **origen** combina protocolo, dominio y puerto:

- Frontend: `http://localhost:5173`.
- Backend: `http://localhost:3000`.

Aunque ambos usan localhost, tienen distinto puerto: son orígenes diferentes.

## ¿Cómo se usa?

Instalá la librería y registrala en [[App]], antes de las rutas:

```bash
npm install cors
```

```js
const express = require("express");
const cors = require("cors");
const app = express();

app.use(cors({
  origin: "http://localhost:5173",
  methods: ["GET", "POST", "PATCH", "DELETE"],
  allowedHeaders: ["Content-Type", "Authorization"],
  credentials: true
}));

app.get("/usuarios", (req, res) => {
  res.json({ nombre: "Ana" });
});

app.listen(3000);
```

## ¿Qué significa cada opción?

- **origin:** origen autorizado. Para varios, podés usar un arreglo: `["http://localhost:5173", "https://miapp.com"]`.
- **methods:** métodos permitidos en la negociación CORS. No crea rutas ni valida permisos del usuario.
- **allowedHeaders:** encabezados que puede enviar el frontend. Si lo omitís, usa los que solicita el navegador.
- **credentials:** habilita respuestas para peticiones con credenciales, como cookies.

No necesitás escribir todas las opciones. `app.use(cors())` permite cualquier origen, sin habilitar credenciales.

## ¿Qué son los encabezados o headers?

Son datos adicionales que acompañan una petición o respuesta. Por ejemplo:

```http
POST /usuarios HTTP/1.1
Content-Type: application/json
Authorization: Bearer token123

{"nombre": "Ana"}
```

**Content-Type** explica que el cuerpo está en JSON. **Authorization** transporta un token. El cuerpo contiene los datos del usuario.

Permitir el encabezado Authorization no verifica el token: esa comprobación corresponde al servidor.

## Si usás cookies

Con el ejemplo anterior, el frontend también debe indicar:

```js
fetch("http://localhost:3000/usuarios", {
  credentials: "include"
});
```

Con credenciales, el origen permitido debe ser concreto: no puede ser `"*"`. Las cookies también deben cumplir sus reglas de envío, como `sameSite` y `secure`. [[cookie-parser]] permite leer las cookies que efectivamente llegan.

## ¿Qué es el preflight?

Antes de ciertas peticiones entre orígenes —por ejemplo, con JSON o Authorization— el navegador envía automáticamente una petición **OPTIONS** para consultar si puede enviarlas. Si falla esa comprobación, no envía la petición principal.

Con `app.use(cors(...))`, el middleware ya responde al preflight.

## Para un examen

> CORS lo aplica el navegador. La librería cors agrega los encabezados que permiten compartir respuestas entre orígenes. No autentica usuarios ni impide que Postman u otros servidores hagan peticiones.

## Fuentes

- [Express: middleware cors y configuración](https://expressjs.com/en/resources/middleware/cors/)
- [MDN: orígenes, preflight y credenciales](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CORS)
