---
title: Create mongoose
tags:
  - backend/mongoose
  - crud
---

# Create mongoose

**C — Create** reúne las operaciones para crear documentos en una colección de MongoDB. `Usuario` es el modelo y `usuario` es un documento de ese modelo. Los métodos se pueden llamar desde un controlador.

```js
import Usuario from './models/Usuario.js';
```

Adaptá la ruta y los campos a tu proyecto. Suponemos que el modelo y la conexión ya están configurados. Cada bloque es independiente y usa `await` dentro de una función `async`. La referencia es la documentación de Mongoose 9; algunos métodos recientes pueden faltar en versiones anteriores.

## create(): crear y guardar

Recibe los datos, ejecuta el guardado con sus validaciones y devuelve el documento persistido. También acepta un arreglo y devuelve varios documentos. Ejecuta los hooks de `save`: funciones configuradas en el esquema que corren antes o después de guardar. [Documentación de create](https://mongoosejs.com/docs/api/model.html#Model.create())

```js
const usuario = await Usuario.create({
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});

console.log(usuario._id);
```

## new Usuario() + save(): preparar y guardar

`new Usuario()` construye el documento en memoria. `save()` lo guarda y devuelve el documento guardado. La construcción es síncrona; el guardado es asíncrono. [Documentación de documentos](https://mongoosejs.com/docs/documents.html#what-is-a-document)

```js
const usuario = new Usuario({
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});

usuario.nombre = 'Ana María';
await usuario.save();
```

Si el documento ya existía, `save()` actualiza sus cambios: [[Update mongoose#save(): modificar un documento consultado]].

## insertOne(): insertar un documento

Disponible en versiones recientes. Recibe datos o un documento y devuelve el documento guardado; ejecuta hooks de `save()`. Para crear uno, también podés usar `create()`. [Referencia de insertOne](https://mongoosejs.com/docs/api/model.html#Model.insertOne())

```js
const usuario = await Usuario.insertOne({
  nombre: 'Luis',
  email: 'luis@ejemplo.com'
});
```

## insertMany(): insertar varios documentos

Recibe un arreglo y, por defecto, devuelve los documentos insertados. Valida los datos, pero no ejecuta hooks de `save()`. Tiene sus propios hooks de `insertMany()`. [Referencia de insertMany](https://mongoosejs.com/docs/api/model.html#Model.insertMany())

```js
const usuarios = await Usuario.insertMany([
  { nombre: 'Ana', email: 'ana@ejemplo.com' },
  { nombre: 'Luis', email: 'luis@ejemplo.com' }
]);
```

Por defecto usa `ordered: true`. Con `{ ordered: false }` intenta insertar los documentos válidos aunque otros fallen; puede haber inserciones exitosas y errores en el mismo lote.

## upsert: actualizar o insertar (U + C)

Mongoose permite activar esta operación con la opción **`upsert: true`** en métodos de actualización. El ejemplo crea al usuario si no existe y cambia su nombre si ya existe. `returnDocument: 'after'` devuelve el resultado posterior a la operación. [Documentación de upsert](https://mongoosejs.com/docs/tutorials/findoneandupdate.html#upsert)

```js
const usuario = await Usuario.findOneAndUpdate(
  { email: 'ana@ejemplo.com' },
  { $set: { nombre: 'Ana' } },
  {
    upsert: true,
    returnDocument: 'after',
    runValidators: true
  }
);
```

Para asignar datos solamente cuando se inserta, podés usar `$setOnInsert`. Si el email debe ser irrepetible, necesitás un índice único en la base.

## bulkWrite(): combinar escrituras (C + U + D)

Agrupa operaciones como `insertOne`, `updateOne` y `deleteOne`. Devuelve un resultado con cantidades, como `insertedCount`, `modifiedCount` y `deletedCount`. Sus reglas de validación y middleware son propias; no equivale a ejecutar `save()` para cada documento. [Referencia de bulkWrite](https://mongoosejs.com/docs/api/model.html#Model.bulkWrite())

```js
const resultado = await Usuario.bulkWrite([
  {
    insertOne: {
      document: { nombre: 'Ana', email: 'ana@ejemplo.com' }
    }
  },
  {
    updateOne: {
      filter: { email: 'luis@ejemplo.com' },
      update: { $set: { activo: true } }
    }
  }
]);
```

Relacionadas: [[Read mongoose]] · [[Update mongoose]] · [[Delete mongoose]].
