---
title: Tipos de datos mongoose
tags:
  - mongoose
  - backend/mongoose
  - modelos
---

# Tipos de datos y opciones de Mongoose

Dentro de un esquema definís el **tipo de cada campo**, sus **reglas** y las **opciones generales del esquema**. Los ejemplos usan **Mongoose 9**; algunos tipos recientes pueden faltar en versiones anteriores. Para ver un archivo completo, seguí en [[Creacion del modelo mongoose]].

```js
import mongoose from 'mongoose';
const { Schema } = mongoose;

const usuarioSchema = new Schema({
  nombre: { type: String, required: true }
});
```

`nombre: String` es la forma abreviada de `nombre: { type: String }`. Cuando necesitás más opciones, usá el objeto completo. [Definición de esquemas](https://mongoosejs.com/docs/guide.html)

## Tipos de datos comunes

| Tipo en el esquema | Qué guarda | Ejemplo |
| --- | --- | --- |
| `String` | Texto | Nombre |
| `Number` | Número, admite decimales | Edad o medición |
| `Boolean` | Verdadero o falso | Activo |
| `Date` | Fecha y hora | Nacimiento |
| `Schema.Types.ObjectId` | Identificador de MongoDB | Referencia a un usuario |
| `[String]` / `[Number]` | Arreglo de elementos de ese tipo | Etiquetas o puntajes |
| `Buffer` | Datos binarios | Contenido de archivo |
| `Map` con `of` | Claves de texto y valores tipados | Preferencias |

[Tipos de esquema](https://mongoosejs.com/docs/schematypes.html)

`Number` admite decimales. Si necesitás un entero, podés agregar `validate: { validator: Number.isInteger }`. Mongoose intenta convertir los valores al tipo declarado: por ejemplo, `'25'` puede convertirse a `25`. Una conversión imposible genera un `CastError`. [Validación y conversión](https://mongoosejs.com/docs/validation.html#cast-errors)

## Tipos para casos específicos

| Tipo | Uso |
| --- | --- |
| `Schema.Types.Decimal128` | Decimal BSON de alta precisión |
| `Schema.Types.Double` | Double BSON explícito |
| `Schema.Types.Int32` | Entero BSON de 32 bits |
| `BigInt` | Enteros JS `bigint`, almacenados como enteros BSON de 64 bits |
| `Schema.Types.UUID` | UUID almacenado como binario BSON |
| `Schema.Types.Mixed` | Valor flexible sin estructura fija |
| `Schema.Types.Union` con `of` | Campo que acepta varios tipos declarados |
| Otro `Schema` | Subdocumento o arreglo de subdocumentos |

`Mixed` puede requerir `documento.markModified('campo')` al modificar datos internos. Para `Union`, un ejemplo es `{ type: Schema.Types.Union, of: [String, Number] }`. [Tipos especiales](https://mongoosejs.com/docs/schematypes.html) · [Subdocumentos](https://mongoosejs.com/docs/subdocs.html)

## Opciones de cada campo

Estas propiedades van junto a `type`, dentro del campo:

| Opción | Para qué sirve | Ejemplo |
| --- | --- | --- |
| `type` | Declara el tipo | `String` |
| `required` | Exige un valor válido para ese tipo | `true` |
| `default` | Valor cuando el campo es `undefined` | `true` |
| `unique` | Declara un índice único | `true` |
| `index` | Declara un índice | `true` |
| `select` | Incluye o excluye por defecto en consultas | `false` |
| `immutable` | Impide cambios posteriores al guardado inicial mediante operaciones habituales de Mongoose | `true` |
| `validate` | Define una validación personalizada | `{ validator: Number.isInteger }` |
| `ref` | Modelo usado al hacer `populate()` | `'Usuario'` |
| `get` / `set` | Funciones para transformar lectura o asignación | `set: valor => valor.trim()` |

[Opciones de campos](https://mongoosejs.com/docs/api/schematypeoptions.html) · [Getters y setters](https://mongoosejs.com/docs/tutorials/getters-setters.html)

`select: false` controla la selección predeterminada: una consulta puede incluir el campo explícitamente. [Selección de campos](https://mongoosejs.com/docs/api/schematypeoptions.html#SchemaTypeOptions.prototype.select)

### Opciones para String

| Opción | Qué hace |
| --- | --- |
| `trim: true` | Elimina espacios en los extremos |
| `lowercase: true` | Convierte a minúsculas |
| `uppercase: true` | Convierte a mayúsculas |
| `minlength: 2` / `maxlength: 100` | Limita la longitud |
| `enum: ['usuario', 'admin']` | Restringe los valores permitidos |
| `match: /patron/` | Valida con una expresión regular |

```js
const campos = {
  nombre: {
    type: String,
    required: [true, 'El nombre es obligatorio'],
    trim: true,
    minlength: 2,
    maxlength: 100
  },
  rol: {
    type: String,
    enum: ['usuario', 'admin'],
    default: 'usuario'
  }
};
```

`trim`, `lowercase` y `uppercase` transforman el valor; `match`, `enum` y los límites de longitud lo validan. Mongoose no incluye una opción `isEmail` como la del ejemplo de Sequelize: podés usar `match` o un validador personalizado. [Opciones de String](https://mongoosejs.com/docs/api/schemastringoptions.html)

### Opciones para Number

```js
const campos = {
  edad: {
    type: Number,
    min: [0, 'La edad no puede ser negativa'],
    max: [120, 'La edad supera el límite'],
    validate: {
      validator: Number.isInteger,
      message: 'La edad debe ser entera'
    }
  }
};
```

`min` y `max` establecen límites inclusivos. La validación adicional comprueba que sea entero. [Opciones de Number](https://mongoosejs.com/docs/api/schemanumberoptions.html)

### Valores predeterminados

```js
const campos = {
  activo: { type: Boolean, default: true },
  fechaAlta: { type: Date, default: Date.now },
  etiquetas: { type: [String], default: [] }
};
```

`default` se aplica cuando el valor es `undefined`; no reemplaza `null`. Pasá `Date.now` sin paréntesis para que la función se ejecute al generar cada valor predeterminado. [Defaults](https://mongoosejs.com/docs/defaults.html)

### Referencias con ObjectId

```js
const articuloSchema = new Schema({
  titulo: { type: String, required: true },
  autor: {
    type: Schema.Types.ObjectId,
    ref: 'Usuario',
    required: true
  }
});
```

`autor` guarda un identificador. `ref: 'Usuario'` nombra al **modelo**, aunque la colección se llame `usuarios`. Después podés usar `Articulo.find().populate('autor')` para cargar sus datos. [Populate](https://mongoosejs.com/docs/populate.html)

> [!note] Existencia del documento referenciado
> `required` exige el identificador y `ref` configura la consulta de población. No garantizan que el usuario exista ni implementan eliminación en cascada. Esa lógica debe resolverla tu aplicación. Continuá en [[populate]].

### Subdocumentos y mapas

```js
const direccionSchema = new Schema(
  {
    calle: { type: String, required: true },
    ciudad: { type: String, required: true }
  },
  { _id: false }
);

const usuarioSchema = new Schema({
  direccion: { type: direccionSchema, required: true },
  etiquetas: [String],
  preferencias: { type: Map, of: String }
});
```

La dirección se guarda dentro del usuario y se valida al guardarlo. `{ _id: false }` evita generar otro identificador para ese subdocumento. Los valores de `preferencias` son textos; usá `.set('tema', 'oscuro')` para modificarlos como mapa de Mongoose. [Subdocumentos](https://mongoosejs.com/docs/subdocs.html) · [Mapas](https://mongoosejs.com/docs/schematypes.html#maps)

## Opciones generales del esquema

Van en el **segundo argumento de `new Schema()`**, fuera de los campos:

```js
const usuarioSchema = new Schema(
  { nombre: { type: String, required: true } },
  {
    collection: 'usuarios',
    timestamps: true,
    strict: true,
    toJSON: { virtuals: true }
  }
);
```

| Opción | Para qué sirve |
| --- | --- |
| `collection` | Fija el nombre de colección |
| `timestamps: true` | Agrega y administra `createdAt` y `updatedAt` |
| `strict: true` | Descarta campos ajenos al esquema al guardar; es el valor predeterminado |
| `strict: 'throw'` | Genera un error ante campos ajenos al esquema |
| `versionKey` | Configura el nombre de `__v`; `false` lo desactiva |
| `optimisticConcurrency: true` | Detecta conflictos de versión al guardar con `save()`; necesita la clave de versión |
| `toJSON` / `toObject` | Configura conversión y salida, incluidos los virtuales |
| `_id: false` | Desactiva el identificador automático en subdocumentos |
| `autoIndex` | Controla creación automática de índices |
| `autoCreate` | Controla creación automática de la colección |

[Opciones de Schema](https://mongoosejs.com/docs/api/schema.html#Schema()) · [Strict y versión](https://mongoosejs.com/docs/guide.html) · [Timestamps](https://mongoosejs.com/docs/timestamps.html)

Los virtuales son propiedades calculadas que no se guardan en MongoDB. `toJSON: { virtuals: true }` permite incluirlos en la salida JSON. [Virtuales](https://mongoosejs.com/docs/guide.html#virtuals)

## Índices y validaciones al actualizar

Podés declarar un índice compuesto antes de compilar el modelo:

```js
// Ambos campos deben existir en inscripcionSchema.
inscripcionSchema.index({ usuario: 1, curso: 1 }, { unique: true });
```

Esto impide repetir la combinación usuario y curso cuando el índice está creado en MongoDB. [Índices de esquema](https://mongoosejs.com/docs/api/schema.html#Schema.prototype.index())

`save()` y `create()` ejecutan validaciones. En métodos como `updateOne()` y `findOneAndUpdate()`, activalas con `{ runValidators: true }`; las validaciones de actualización tienen reglas propias y normalmente revisan las rutas actualizadas. [Validaciones de actualización](https://mongoosejs.com/docs/validation.html#update-validators)

> [!important] unique necesita un índice
> `unique: true` no es un validador. Los duplicados los rechaza MongoDB cuando existe el índice único, normalmente con `E11000`. Declarar el esquema tampoco agrega automáticamente las nuevas reglas a los documentos que ya estaban guardados. [Unicidad](https://mongoosejs.com/docs/validation.html#the-unique-option-is-not-a-validator)

Relacionadas: [[Creacion del modelo mongoose]] · [[Create mongoose]] · [[Update mongoose]] · [[populate]].
