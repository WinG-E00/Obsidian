---
title: Resultados de express-validator
aliases:
  - resultados de express validator
tags:
  - backend/express-validator
  - validacion
---

# Resultados de express-validator

Después de ejecutar las reglas, podés consultar **los errores** y **los datos procesados** de la petición. Los ejemplos usan **express-validator 7**.

```text
Resultados
 ├── validationResult(req) → objeto Result
 │    ├── isEmpty() → ¿no hay errores?
 │    ├── array()   → arreglo de errores
 │    └── mapped()  → errores organizados por campo
 │
 └── matchedData(req) → objeto con los datos procesados
```

## Importaciones

```js
import { validationResult, matchedData } from 'express-validator';
```

Ambas reciben `req`, la petición sobre la que se ejecutaron las cadenas. [Guía de uso](https://express-validator.github.io/docs/guides/getting-started/)

## validationResult(): consultar los errores

Devuelve un **objeto `Result`** con métodos para consultar los fallos registrados:

```js
const resultado = validationResult(req);

const sinErrores = resultado.isEmpty();
const errores = resultado.array();
```

| Método | Qué devuelve |
| --- | --- |
| `isEmpty()` | `true` si no hay errores; `false` si hay alguno |
| `array()` | Arreglo con los errores; `[]` si no hay |
| `array({ onlyFirstError: true })` | Solo el primer error de cada campo |
| `mapped()` | Objeto cuyas claves son los campos; toma el primer error de cada uno |

`resultado` es el objeto de consulta; `resultado.array()` obtiene el arreglo. [API de Result](https://express-validator.github.io/docs/api/validation-result/)

## matchedData(): obtener los datos procesados

Devuelve un objeto con los campos que pasaron por las cadenas de validación o sanitización. Por defecto incluye solo los válidos y omite opcionales ausentes:

```js
const datos = matchedData(req, { locations: ['body'] });
```

Por ejemplo, si validaste `nombre` y `email`, una petición puede contener:

```json
{
  "nombre": "  Ana  ",
  "email": "ana@ejemplo.com",
  "admin": true
}
```

Después de aplicar `.trim()` a `nombre`, el objeto extraído sería:

```json
{
  "nombre": "Ana",
  "email": "ana@ejemplo.com"
}
```

`admin` queda fuera porque no tiene una cadena. Esto no elimina ese campo de `req.body`: para trabajar con el objeto filtrado, usá `datos`.

| Opción | Efecto |
| --- | --- |
| `locations: ['body']` | Extrae solo campos del cuerpo; por defecto considera todas las ubicaciones procesadas |
| `onlyValidData: false` | Incluye también campos procesados que fallaron; por defecto es `true` |
| `includeOptionals: true` | Incluye opcionales ausentes, normalmente como `undefined`; por defecto es `false` |

**No rechaza peticiones ni responde al cliente**. Si hay un email inválido, normalmente lo omite: primero revisá los errores para decidir si continuar. [API de matchedData](https://express-validator.github.io/docs/api/matched-data/)

## ¿Cómo es un error de validación?

Esta regla comprueba el email y define su mensaje:

```js
body('email')
  .isEmail()
  .withMessage('El email no es válido');
```

Si recibís `email: 'hola'`, `resultado.array()` puede contener:

```json
[
  {
    "type": "field",
    "value": "hola",
    "msg": "El email no es válido",
    "path": "email",
    "location": "body"
  }
]
```

| Propiedad | Significado |
| --- | --- |
| `type` | Clase de error; `field` corresponde a un campo |
| `value` | Valor que falló |
| `msg` | Mensaje de error |
| `path` | Nombre o ruta del campo |
| `location` | Dónde estaba: `body`, `params`, `query`, etc. |

Esta forma corresponde a errores de campo; APIs como `oneOf()` y `checkExact()` pueden producir otras estructuras. [Tipos de error](https://express-validator.github.io/docs/api/validation-result/#error-types)

Con `.withMessage()` personalizás el mensaje del validador anterior; por defecto suele ser `Invalid value`. Un validador `.custom()` también puede registrar un fallo al lanzar un error o rechazar una promesa. [Mensajes y validadores personalizados](https://express-validator.github.io/docs/guides/customizing/)

## Ejemplo completo: revisar errores y extraer datos

```js
import express from 'express';
import { body, validationResult, matchedData } from 'express-validator';

const app = express();
app.use(express.json());

app.post('/usuarios', [
  body('nombre')
    .trim()
    .notEmpty()
    .withMessage('El nombre es obligatorio'),
  body('email')
    .isEmail()
    .withMessage('El email no es válido')
], (req, res) => {
  const resultado = validationResult(req);

  if (!resultado.isEmpty()) {
    return res.status(400).json({
      errores: resultado.array()
    });
  }

  const datos = matchedData(req, { locations: ['body'] });

  // Acá podrías pasar datos a la operación de tu controlador.
  return res.status(200).json({ datos });
});

app.listen(3000);
```

El ejemplo devuelve datos para observarlos; no guarda en la base. Con el email `'hola'`, responde `400` con el arreglo de errores mostrado. Con datos válidos, responde `200` con el objeto extraído.

En `!resultado.isEmpty()`, `!` invierte el booleano: entrás al bloque cuando **hay errores**. `return` termina esa ejecución del controlador después de responder. [Manejo de resultados](https://express-validator.github.io/docs/guides/getting-started/#handling-validation-errors)

> [!important] Registrar un fallo y lanzar una excepción
> Las validaciones no envían automáticamente una respuesta HTTP. Tu código decide cómo responder. `resultado.throw()` es una alternativa que lanza una excepción cuando hay errores y requiere manejarla; el ejemplo usa `isEmpty()` y una respuesta `400`. [Método throw](https://express-validator.github.io/docs/api/validation-result/#throw)

Relacionadas: [[App]] · [[Create mongoose]] · [[Create sequelize]].
