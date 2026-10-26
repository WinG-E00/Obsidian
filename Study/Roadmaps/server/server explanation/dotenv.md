---
title: dotenv
tags:
  - backend/configuracion
  - dependencias
---

# dotenv

## ¿Para qué sirve?

**dotenv** lee un archivo `.env` y carga sus variables en `process.env`, para que tu aplicación pueda usar configuraciones como el puerto o la dirección de la base de datos. [Documentación de dotenv](https://github.com/motdotla/dotenv#readme)

```bash
npm install dotenv
```

## 1. Crear el archivo .env

En la raíz del proyecto, por ejemplo:

```dotenv
PORT=3000
URI_MONGODBATLAS=mongodb://127.0.0.1:27017/miapp
JWT_SECRET=REEMPLAZAR_POR_UN_SECRETO_ALEATORIO
```

Los nombres los elegís vos; deben coincidir con los que lee tu código. El valor de `JWT_SECRET` es un marcador para reemplazar por un secreto aleatorio y privado. [Variables de entorno](https://nodejs.org/api/environment_variables.html)

## 2. Cargarlo antes de usar las variables

En el archivo de entrada de tu aplicación con módulos ES:

```js
import 'dotenv/config';

const puerto = Number(process.env.PORT ?? 3000);
const uri = process.env.URI_MONGODBATLAS;

if (!uri) throw new Error('Falta URI_MONGODBATLAS');
```

Importá `dotenv/config` antes de los módulos que leen estas variables al inicializarse. Después, los módulos de ese proceso pueden consultar `process.env`. [Uso con módulos ES](https://github.com/motdotla/dotenv#how-do-i-use-dotenv-with-import)

`process.env` pertenece a **Node.js**; dotenv carga los valores. Los valores definidos son textos: `PORT=3000` produce `'3000'`. Usá `Number()` para convertirlo. Una variable ausente devuelve `undefined`. [Node.js: valores de entorno](https://nodejs.org/api/environment_variables.html#variable-values)

## 3. Configuración explícita con config()

Esta alternativa permite personalizar la carga:

```js
import dotenv from 'dotenv';

const resultado = dotenv.config({ path: '.env.desarrollo' });
if (resultado.error) throw resultado.error;

// Los módulos que dependen de estas variables deben cargarse después.
```

| Opción | Para qué sirve |
| --- | --- |
| `path` | Ruta del archivo; por defecto busca `.env` desde el directorio de ejecución |
| `override` | Permite reemplazar variables existentes; por defecto es `false` |
| `debug` | Activa información de diagnóstico |

Son dos formas alternativas de cargar la configuración: elegí la que corresponda al proyecto. [Config y opciones](https://github.com/motdotla/dotenv#config)

## Configuración privada

Excluí el archivo con secretos de Git mediante `.gitignore` y compartí un `.env.example` con los nombres y valores de ejemplo. Dotenv carga configuración; un archivo `.env` común sigue siendo texto legible. [Archivo .env y Git](https://github.com/motdotla/dotenv#should-i-commit-my-env-file)

## ¿Cómo se relacionan estas dependencias?

| Dependencia | Papel en tu servidor |
| --- | --- |
| `dotenv` | Carga configuración como `JWT_SECRET` y la URI de la base |
| [[bcrypt]] | Genera y compara hashes de contraseñas |
| [[jsonwebtoken]] | Crea y verifica tokens para futuras peticiones |

Relacionadas: [[App]] · [[creacion database con mongose]] · [[creacion database con sequelize]].
