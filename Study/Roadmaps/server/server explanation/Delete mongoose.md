---
title: Delete mongoose
tags:
  - backend/mongoose
  - crud
---

# Delete mongoose

**D — Delete** reúne las operaciones para eliminar documentos de una colección. Los ejemplos usan un modelo `Usuario` conectado a MongoDB y módulos ES. Cada bloque es independiente y se ejecuta dentro de una función `async`. Referencia: documentación de Mongoose 9.

```js
import Usuario from './models/Usuario.js';
```

## deleteOne(): eliminar una coincidencia

Recibe un filtro y elimina como máximo un documento. Devuelve un resultado con `deletedCount`: normalmente `1` si eliminó o `0` si no encontró coincidencia. No devuelve el usuario eliminado. [Referencia de deleteOne](https://mongoosejs.com/docs/api/model.html#Model.deleteOne())

```js
const resultado = await Usuario.deleteOne({
  email: 'ana@ejemplo.com'
});

console.log(resultado.deletedCount);
```

Si el filtro coincide con varios documentos, elimina uno. Para seleccionar un usuario concreto, podés filtrar por `_id`.

## deleteMany(): eliminar varias coincidencias

Elimina todos los documentos que cumplan el filtro. Devuelve un resultado con `deletedCount`, que puede ser mayor que `1`. [Referencia de deleteMany](https://mongoosejs.com/docs/api/model.html#Model.deleteMany())

```js
const resultado = await Usuario.deleteMany({ activo: false });

console.log(resultado.deletedCount);
```

**Un filtro vacío alcanza toda la colección:** `Usuario.deleteMany({})` elimina todos sus documentos, conservando la colección y sus índices. Es distinto de borrar una colección completa. [Comportamiento de deleteMany en MongoDB](https://www.mongodb.com/docs/manual/reference/method/db.collection.deleteMany/)

## findOneAndDelete(): eliminar y devolver el documento

Busca por filtro, elimina una coincidencia y devuelve el documento eliminado. Si no encuentra, devuelve `null`. Sirve cuando necesitás datos del usuario que acabás de eliminar. [Referencia de findOneAndDelete](https://mongoosejs.com/docs/api/model.html#Model.findOneAndDelete())

```js
const usuarioEliminado = await Usuario.findOneAndDelete({
  email: 'ana@ejemplo.com'
});

if (usuarioEliminado) {
  console.log(usuarioEliminado.nombre);
}
```

## findByIdAndDelete(): eliminar por _id

Recibe directamente el identificador. Equivale a `findOneAndDelete({ _id: id })`. Devuelve el documento eliminado o `null`. Un identificador con formato incompatible puede generar un `CastError`. [Referencia de findByIdAndDelete](https://mongoosejs.com/docs/api/model.html#Model.findByIdAndDelete())

```js
const usuarioEliminado = await Usuario.findByIdAndDelete(
  '507f1f77bcf86cd799439011'
);
```

## usuario.deleteOne(): eliminar un documento consultado

Es el método sobre una instancia. Usalo si ya tenés el usuario en memoria; elimina por su `_id`. Devuelve un resultado de eliminación, no el documento eliminado. [Referencia de eliminación de instancias](https://mongoosejs.com/docs/api/model.html#Model.prototype.deleteOne())

```js
const usuario = await Usuario.findById('507f1f77bcf86cd799439011');

if (usuario) {
  const resultado = await usuario.deleteOne();
  console.log(resultado.deletedCount);
}
```

## ¿Qué devuelve cada variante?

| Método | Resultado después de await |
|---|---|
| `Usuario.deleteOne()` | Resultado con `deletedCount` |
| `Usuario.deleteMany()` | Resultado con `deletedCount` |
| `Usuario.findOneAndDelete()` | Documento eliminado o `null` |
| `Usuario.findByIdAndDelete()` | Documento eliminado o `null` |
| `usuario.deleteOne()` | Resultado con `deletedCount` |

También podés agrupar eliminaciones con otras escrituras mediante [[Create mongoose#bulkWrite(): combinar escrituras (C + U + D)|bulkWrite()]].

Relacionadas: [[Create mongoose]] · [[Read mongoose]] · [[Update mongoose]].
