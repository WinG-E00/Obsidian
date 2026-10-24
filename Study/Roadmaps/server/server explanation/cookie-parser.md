# cookie-parser

## Primero: ¿qué es una cookie?

Pensá en una cookie como un pequeño recordatorio que guarda el navegador. Por ejemplo: «esta persona eligió el tema oscuro». En próximas peticiones, el navegador puede enviar ese dato al servidor.

## ¿Qué hace cookie-parser?

Es un **middleware**: una función que se ejecuta durante el procesamiento de una petición, antes de llegar al controlador.

Lee el encabezado `Cookie` y deja sus datos en `req.cookies`. Así, este texto:

```http
Cookie: tema=oscuro; idioma=es
```

Se puede consultar así:

```js
req.cookies.tema;   // "oscuro"
req.cookies.idioma; // "es"
```

Sin cookies recibidas, `req.cookies` es un objeto vacío. Una propiedad inexistente devuelve `undefined`.

## ¿Dónde se configura?

En [[App]], antes de las rutas que lo necesitan:

```bash
npm install cookie-parser
```

```js
const express = require("express");
const cookieParser = require("cookie-parser");
const app = express();

app.use(cookieParser());

app.get("/preferencias", (req, res) => {
  res.json({ tema: req.cookies.tema || "claro" });
});

app.listen(3000);
```

## Leer, enviar y borrar son tareas distintas

- `req.cookies.tema`: lee lo recibido, gracias a cookie-parser.
- `res.cookie("tema", "oscuro")`: pide al navegador que guarde una cookie.
- `res.clearCookie("tema")`: pide que la elimine.

Los dos métodos de `res` son de **Express**. Para borrar, deben coincidir las opciones de alcance usadas al crearla, como `path` y `domain`.

Lo que enviás con `res.cookie()` aparece en una **respuesta**. El navegador podrá devolverlo en una **petición posterior**.

## Cookies firmadas: como un sello

Una firma permite detectar cambios: es como un sello que el servidor comprueba con un secreto.

```js
app.use(cookieParser(process.env.COOKIE_SECRET));

// Dentro de una ruta, con un secreto configurado:
res.cookie("tema", "oscuro", { signed: true });

// Al recibirla en otra petición:
req.signedCookies.tema;
```

El secreto debe estar configurado y mantenerse privado. Una firma inválida produce `false`; una cookie ausente, `undefined`.

**Firmar no oculta el contenido:** permite detectar modificaciones. Además, leer un token no equivale a verificarlo ni a iniciar una sesión.

## Opciones al enviar una cookie

Se pasan a `res.cookie()`:

| Opción           | Qué significa                                                                                                          |
| ---------------- | ---------------------------------------------------------------------------------------------------------------------- |
| `httpOnly: true` | JavaScript del navegador no puede leerla mediante `document.cookie`. El navegador puede seguir enviándola al servidor. |
| `secure: true`   | Se envía mediante HTTPS.                                                                                               |
| `sameSite`       | Regula su envío entre sitios.                                                                                          |
| `maxAge`         | Define cuánto dura, en milisegundos. `60000` equivale a un minuto.                                                     |

## Para responder en un examen

> cookie-parser interpreta las cookies recibidas y permite consultarlas en req.cookies. Con un secreto también verifica cookies firmadas en req.signedCookies. No administra sesiones ni autentica usuarios por sí solo.

## Fuentes

- [Documentación oficial de cookie-parser](https://expressjs.com/en/resources/middleware/cookie-parser/)
- [Express: enviar cookies y sus opciones](https://expressjs.com/en/5x/api/response/#res.cookie)
- [Express: eliminar cookies](https://expressjs.com/en/5x/api/response/#res.clearCookie)
