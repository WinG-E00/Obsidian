---
title: Creación de un modelo en Mongoose
tags:
  - backend/mongoose
  - modelos
---

# Creación de un modelo en Mongoose

En Mongoose trabajás con tres elementos:

- **Esquema (`Schema`)**: describe los campos, los tipos y las reglas.
- **Modelo (`model`)**: se construye a partir del esquema y permite consultar y guardar documentos en una colección.
- **Documento**: una instancia del modelo; por ejemplo, un usuario concreto.

Los ejemplos usan **Mongoose 9 y módulos ES**, como las notas de CRUD. [Esquemas](https://mongoosejs.com/docs/guide.html) · [Modelos y documentos](https://mongoosejs.com/docs/models.html)

## 1. Importar Mongoose

Creá un archivo `models/Usuario.js`:

```js
import mongoose from 'mongoose';

const { Schema } = mongoose;
```

La conexión se configura al iniciar la aplicación con `mongoose.connect()`, como en [[creacion database con mongose]]. `mongoose.model()` utiliza esa conexión predeterminada. [Conexiones](https://mongoosejs.com/docs/connections.html)

## 2. Crear el esquema y exportar el modelo

`new Schema()` recibe dos argumentos: **la definición de los campos** y **las opciones generales**. Después, `mongoose.model()` recibe el nombre del modelo y el esquema. Este sería el archivo completo:

```js
// models/Usuario.js
import mongoose from 'mongoose';

const { Schema } = mongoose;

const usuarioSchema = new Schema(
  {
    nombre: {
      type: String,
      required: [true, 'El nombre es obligatorio'],
      trim: true,
      minlength: 2,
      maxlength: 100
    },
    email: {
      type: String,
      required: [true, 'El email es obligatorio'],
      trim: true,
      lowercase: true,
      unique: true
    },
    edad: {
      type: Number,
      min: 0,
      validate: {
        validator: Number.isInteger,
        message: 'La edad debe ser un número entero'
      }
    },
    activo: {
      type: Boolean,
      default: true
    }
  },
  {
    collection: 'usuarios',
    timestamps: true
  }
);

const Usuario = mongoose.model('Usuario', usuarioSchema);

export default Usuario;
```

Leé los campos así:

- `nombre`: obligatorio, entre 2 y 100 caracteres; elimina espacios de los extremos.
- `email`: obligatorio, elimina espacios y convierte a minúsculas. El formato de email requiere una validación adicional.
- `edad`: opcional; cuando se informa, debe ser entera y no negativa.
- `activo`: empieza en `true` si lo omitís.

`type` configura el tipo y las otras propiedades configuran el campo. El detalle está en [[Tipos de datos mongoose#Opciones de cada campo]]. [Opciones de texto](https://mongoosejs.com/docs/api/schemastringoptions.html) · [Validaciones](https://mongoosejs.com/docs/validation.html) · [Valores predeterminados](https://mongoosejs.com/docs/defaults.html)

`collection: 'usuarios'` fija el nombre de la colección. `'Usuario'` es el nombre del modelo que usarías también en una referencia `ref`. Si no fijás la colección, Mongoose deriva su nombre del modelo y lo pluraliza. [Compilar un modelo](https://mongoosejs.com/docs/models.html#compiling)

## 3. Entender los campos automáticos

No necesitás declarar `_id`: Mongoose lo agrega por defecto como `ObjectId`. También agrega `__v`, su clave de versión; no representa una fecha ni un contador de todas las modificaciones. [Identificadores y versión](https://mongoosejs.com/docs/guide.html)

Con `timestamps: true`, Mongoose agrega `createdAt` y `updatedAt` y los administra al guardar y actualizar mediante sus operaciones compatibles. [Timestamps](https://mongoosejs.com/docs/timestamps.html)

> [!note] Email único
> `unique: true` declara un índice único en MongoDB. La unicidad se garantiza cuando ese índice existe; un duplicado produce un error de clave duplicada, normalmente `E11000`. [Unicidad e índices](https://mongoosejs.com/docs/validation.html#the-unique-option-is-not-a-validator)

## 4. Conectar y guardar un documento

Este ejemplo muestra un archivo de arranque independiente. Ajustá la ruta y usá la variable de entorno de tu conexión:

```js
import 'dotenv/config';
import mongoose from 'mongoose';
import Usuario from './models/Usuario.js';

async function main() {
  await mongoose.connect(process.env.URI_MONGODBATLAS);

  // En este ejemplo de desarrollo, espera la creación de los índices.
  await Usuario.init();

  const usuario = await Usuario.create({
    nombre: 'Ana',
    email: 'ana@ejemplo.com',
    edad: 25
  });

  console.log(usuario._id);
}

main().catch(console.error);
```

`mongoose.connect()` abre la conexión; `Usuario.create()` valida y guarda el documento. En una aplicación Express, conectás durante el arranque y llamás a `create()` desde el controlador. [Conexión](https://mongoosejs.com/docs/connections.html) · [Creación de documentos](https://mongoosejs.com/docs/models.html) · [Espera de índices](https://mongoosejs.com/docs/validation.html#the-unique-option-is-not-a-validator)

MongoDB crea normalmente la colección al insertar por primera vez; Mongoose también puede crearla antes según su configuración de `autoCreate` e índices. Este proceso no requiere un método `sync()` como Sequelize. [Creación de colecciones](https://mongoosejs.com/docs/guide.html#autoCreate)

## 5. Agregar comportamiento al esquema

Podés agregar métodos, índices y middleware —funciones que se ejecutan en eventos como guardar— **antes de llamar a `mongoose.model()`**. Por ejemplo:

```js
// Después de crear usuarioSchema y antes de compilar Usuario:
usuarioSchema.methods.saludar = function () {
  return `Hola, soy ${this.nombre}`;
};
```

Después podés llamar a `usuario.saludar()` sobre un documento. Usá una función normal cuando necesites que `this` sea ese documento. [Métodos de instancia](https://mongoosejs.com/docs/guide.html#methods) · [Compilación del modelo](https://mongoosejs.com/docs/models.html#compiling)

Relacionadas: [[Tipos de datos mongoose]] · [[creacion database con mongose]] · [[Create mongoose]] · [[Read mongoose]] · [[Update mongoose]] · [[Delete mongoose]].
