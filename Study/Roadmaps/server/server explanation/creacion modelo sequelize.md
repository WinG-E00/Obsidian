---
title: Creación de un modelo en Sequelize
tags:
  - backend/sequelize
  - modelos
---

# Creación de un modelo en Sequelize

Un **modelo** representa una tabla: describe sus columnas, sus tipos y sus reglas. Por ejemplo, el modelo `Usuario` representa usuarios y cada instancia representa una fila. Estos ejemplos usan **Sequelize 6 y módulos ES**, como [[creacion database con sequelize]]. [Concepto de modelo](https://sequelize.org/docs/v6/core-concepts/model-basics/)

## 1. Importar la conexión y los tipos

Creá un archivo `models/Usuario.js`. Importá la instancia de conexión que ya exportaste desde tu configuración y `DataTypes`, que contiene los tipos disponibles. Ajustá la ruta a tu proyecto.

```js
import sequelize from '../database.js';
import { DataTypes } from 'sequelize';
```

`sequelize` es la conexión configurada; `DataTypes` permite describir las columnas. [Referencia de DataTypes](https://sequelize.org/api/v6/variable/index.html#static-variable-DataTypes)

## 2. Definir y exportar el modelo

`define()` recibe tres argumentos: **nombre del modelo**, **campos** y **opciones generales**. Devuelve el modelo que después importás en tus controladores. [Referencia de define](https://sequelize.org/api/v6/class/src/sequelize.js~sequelize#instance-method-define)

Este sería el archivo completo:

```js
// models/Usuario.js
import sequelize from '../database.js';
import { DataTypes } from 'sequelize';

const Usuario = sequelize.define(
  'Usuario',
  {
    id: {
      type: DataTypes.INTEGER,
      primaryKey: true,
      autoIncrement: true
    },
    nombre: {
      type: DataTypes.STRING(100),
      allowNull: false,
      validate: { notEmpty: true }
    },
    email: {
      type: DataTypes.STRING(255),
      allowNull: false,
      unique: true,
      validate: { isEmail: true }
    },
    activo: {
      type: DataTypes.BOOLEAN,
      allowNull: false,
      defaultValue: true
    }
  },
  {
    tableName: 'usuarios',
    timestamps: true
  }
);

export default Usuario;
```

Leé el ejemplo así:

- `id`: identificador entero que se incrementa automáticamente.
- `nombre`: texto obligatorio y no vacío.
- `email`: texto obligatorio, con formato de email y sin duplicados.
- `activo`: booleano que empieza en `true` si no enviás un valor.

Las opciones de columna se detallan en [[Tipos de datos sequelize#Opciones de cada campo]]. [Referencia de atributos](https://sequelize.org/api/v6/class/src/model.js~model#static-method-init)

`tableName` fija el nombre SQL `usuarios`; `'Usuario'` identifica al modelo en Sequelize. `timestamps: true` agrega `createdAt` y `updatedAt`, que Sequelize administra al crear y modificar registros. Si no declarás ninguna clave primaria, agrega un `id` entero automáticamente. [Nombres de tablas](https://sequelize.org/docs/v6/other-topics/naming-strategies/) · [Campos automáticos](https://sequelize.org/docs/v6/core-concepts/model-basics/)

## 3. Crear la tabla en desarrollo

**Definir el modelo y crear la tabla son pasos distintos.** Importá el modelo antes de sincronizar para que quede registrado en esa conexión:

```js
// Ejecutar dentro de la función async que inicia la base de datos.
await sequelize.authenticate();
await sequelize.sync();
```

`sync()` crea las tablas faltantes; no adapta automáticamente una tabla existente a todos los cambios del modelo. Para evolucionar el esquema en producción, usá **migraciones**. [Sincronización](https://sequelize.org/api/v6/class/src/sequelize.js~sequelize#instance-method-sync) · [Migraciones](https://sequelize.org/docs/v6/other-topics/migrations/)

> [!warning] Opción force
> `sync({ force: true })` elimina y vuelve a crear las tablas, perdiendo sus datos. Para este ejemplo usá `sync()` sin esa opción.

El proceso de arranque está explicado en [[sincronizacion de modelos con sequelize]].

## 4. Usar el modelo desde un controlador

Después de preparar la base, importá el modelo y creá un registro dentro de una función `async`:

```js
import Usuario from './models/Usuario.js';

// Dentro de tu controlador async:
const usuario = await Usuario.create({
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});
```

En este caso enviás `nombre` y `email`; el identificador, `activo` y las fechas se completan según la definición. Continuá en [[Create sequelize]].

## Otra forma: Model.init()

También podés definir una clase. Es una alternativa a `define()`; elegí una forma para cada modelo. [Definición de modelos](https://sequelize.org/docs/v6/core-concepts/model-basics/#model-definition)

```js
import { Model, DataTypes } from 'sequelize';
import sequelize from '../database.js';

class Usuario extends Model {}

Usuario.init(
  { nombre: { type: DataTypes.STRING, allowNull: false } },
  { sequelize, modelName: 'Usuario', tableName: 'usuarios' }
);

export default Usuario;
```

Acá la conexión va en las opciones de `init()`. En `sequelize.define()` ya está indicada por el objeto sobre el que llamás al método.

Relacionadas: [[Tipos de datos sequelize]] · [[creacion database con sequelize]] · [[Create sequelize]].
