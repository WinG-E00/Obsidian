---
title: Update mongoose
tags:
  - backend/mongoose
  - crud
---

# Update mongoose

**U — Update** reúne las operaciones para modificar documentos. `Usuario` es el modelo y `usuario` es un documento. Suponemos una conexión configurada y un esquema con los campos usados. Cada bloque es independiente y se ejecuta dentro de una función `async`. Referencia: documentación de Mongoose 9.

```js
import Usuario from './models/Usuario.js';
```

## updateOne(): actualizar una coincidencia

Recibe filtro, actualización y opciones. Devuelve un resultado con `matchedCount` y `modifiedCount`, no el documento. Pueden diferir: encontrar un usuario no implica modificarlo si ya tenía los valores enviados. [Referencia de updateOne](https://mongoosejs.com/docs/api/model.html#Model.updateOne())

```js
const resultado = await Usuario.updateOne(
  { email: 'ana@ejemplo.com' },
  { $set: { nombre: 'Ana María' } },
  { runValidators: true }
);

console.log(resultado.matchedCount, resultado.modifiedCount);
```

## updateMany(): actualizar varias coincidencias

Aplica los cambios a todos los documentos que cumplan el filtro. Devuelve un resultado con las mismas cantidades. [Referencia de updateMany](https://mongoosejs.com/docs/api/model.html#Model.updateMany())

```js
const resultado = await Usuario.updateMany(
  { ciudad: 'Córdoba' },
  { $set: { activo: true } },
  { runValidators: true }
);
```

## findOneAndUpdate(): actualizar y devolver el documento

Recibe filtro, cambios y opciones. Devuelve un documento o `null` si no coincide. Por defecto devuelve su estado anterior; `returnDocument: 'after'` devuelve el posterior. [Guía de findOneAndUpdate](https://mongoosejs.com/docs/tutorials/findoneandupdate.html)

```js
const usuario = await Usuario.findOneAndUpdate(
  { email: 'ana@ejemplo.com' },
  { $set: { nombre: 'Ana María' } },
  { returnDocument: 'after', runValidators: true }
);
```

En ejemplos anteriores podés encontrar `new: true`: cumple el mismo propósito, pero la documentación actual prefiere `returnDocument: 'after'`.

## findByIdAndUpdate(): actualizar por _id

Es la variante que recibe el identificador directamente. Devuelve el documento o `null`, con la misma opción para elegir el estado devuelto. [Referencia de findByIdAndUpdate](https://mongoosejs.com/docs/api/model.html#Model.findByIdAndUpdate())

```js
const usuario = await Usuario.findByIdAndUpdate(
  '507f1f77bcf86cd799439011',
  { $set: { activo: false } },
  { returnDocument: 'after', runValidators: true }
);
```

## save(): modificar un documento consultado

Después de buscarlo, asignás campos y guardás. Devuelve el documento guardado. Ejecuta validación y hooks de `save()`. Si el documento es nuevo, inserta: también pertenece a [[Create mongoose]]. [Documentación de save](https://mongoosejs.com/docs/documents.html#updating-using-save)

```js
const usuario = await Usuario.findById('507f1f77bcf86cd799439011');

if (usuario) {
  usuario.nombre = 'Ana María';
  await usuario.save();
}
```

## set(): preparar cambios en memoria

Asigna campos sin guardarlos. Es síncrono; después usás `save()` para persistir. [Documentación de asignación de campos](https://mongoosejs.com/docs/documents.html#setting-nested-properties)

```js
const usuario = await Usuario.findById('507f1f77bcf86cd799439011');

if (usuario) {
  usuario.set({ nombre: 'Ana', activo: true });
  await usuario.save();
}
```

## replaceOne(): reemplazar el contenido

Reemplaza los campos del documento seleccionado, conservando `_id`. Los campos omitidos del reemplazo dejan de conservarse, salvo los que Mongoose aplique según el esquema. Devuelve un resultado con cantidades. [Referencia de replaceOne](https://mongoosejs.com/docs/api/model.html#Model.replaceOne())

```js
const resultado = await Usuario.replaceOne(
  { _id: '507f1f77bcf86cd799439011' },
  { nombre: 'Ana', email: 'ana@ejemplo.com', activo: true },
  { runValidators: true }
);
```

## findOneAndReplace(): reemplazar y devolver el documento

Hace el reemplazo completo y devuelve el documento seleccionado, o `null`. Con `returnDocument: 'after'` devuelve su estado posterior. [Referencia de findOneAndReplace](https://mongoosejs.com/docs/api/model.html#Model.findOneAndReplace())

```js
const usuario = await Usuario.findOneAndReplace(
  { email: 'ana@ejemplo.com' },
  { nombre: 'Ana María', email: 'ana@ejemplo.com' },
  { returnDocument: 'after', runValidators: true }
);
```

## Operadores de actualización

Van dentro de los cambios enviados a métodos como `updateOne()`. `$set` asigna, `$unset` elimina un campo, `$inc` suma o resta, `$push` agrega a un arreglo y `$pull` quita elementos que coinciden. Son operadores de MongoDB. [Referencia de operadores](https://www.mongodb.com/docs/manual/reference/operator/update/)

```js
await Usuario.updateOne(
  { _id: '507f1f77bcf86cd799439011' },
  { $inc: { puntos: 10 } }
);

// Para restar, usá $inc: { puntos: -5 }.
```

## Validaciones y operaciones combinadas

Los validadores de actualización se activan con `runValidators: true`, pero tienen límites: validan los campos actualizados y ciertos operadores; por ejemplo, no validan `$inc`. Los métodos de actualización por consulta no ejecutan hooks de `save()`. [Validadores de actualización](https://mongoosejs.com/docs/validation.html#update-validators)

Para insertar si no hay coincidencia: [[Create mongoose#upsert: actualizar o insertar (U + C)]]. Para agrupar escrituras: [[Create mongoose#bulkWrite(): combinar escrituras (C + U + D)]].

Relacionadas: [[Create mongoose]] · [[Read mongoose]] · [[Delete mongoose]].
