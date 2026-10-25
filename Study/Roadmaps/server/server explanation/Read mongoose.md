---
title: Read mongoose
tags:
  - backend/mongoose
  - crud
---

# Read mongoose

**R — Read** reúne las consultas de documentos. Los ejemplos usan un modelo `Usuario` conectado a MongoDB, módulos ES y `await` dentro de una función `async`. Cada bloque es independiente. Referencia: documentación de Mongoose 9.

```js
import Usuario from './models/Usuario.js';
```

Muchos métodos construyen una **Query**, que se ejecuta con `await` o `.exec()`. Las explicaciones de retorno se refieren al resultado después de ejecutarla. [Documentación de consultas](https://mongoosejs.com/docs/queries.html)

## find(): obtener varios documentos

Recibe un filtro y devuelve un arreglo de documentos. Si no encuentra coincidencias, devuelve `[]`. `find({})` consulta todos.

```js
const usuarios = await Usuario.find({ activo: true })
  .select('nombre email')
  .sort({ _id: 1 })
  .skip(0)
  .limit(10);
```

`select()` elige campos, `sort()` ordena (`1` ascendente, `-1` descendente), `skip()` salta resultados y `limit()` limita la cantidad. `_id` se incluye por defecto al seleccionar campos. [Ejemplos de consultas](https://mongoosejs.com/docs/queries.html#executing)

## findOne(): obtener una coincidencia

Devuelve un documento o `null`. Podés ordenar para decidir cuál obtener cuando varios coinciden.

```js
const usuario = await Usuario.findOne({ nombre: 'Ana' })
  .sort({ _id: 1 });
```

## findById(): buscar por _id

Recibe directamente el identificador. Equivale a `findOne({ _id: id })` y devuelve un documento o `null`. Un identificador con formato incompatible con el esquema puede producir un `CastError`. [Referencia de findById](https://mongoosejs.com/docs/api/model.html#Model.findById())

```js
const usuario = await Usuario.findById('507f1f77bcf86cd799439011');
```

## exists(): comprobar existencia

Devuelve un objeto con `_id` si hay coincidencia, o `null`. No devuelve directamente `true` o `false`; podés convertirlo con `Boolean()`. [Referencia de exists](https://mongoosejs.com/docs/api/model.html#Model.exists())

```js
const coincidencia = await Usuario.exists({ email: 'ana@ejemplo.com' });
const existe = Boolean(coincidencia);
```

## countDocuments(): contar con un filtro

Devuelve la cantidad de documentos que coinciden. [Referencia de countDocuments](https://mongoosejs.com/docs/api/model.html#Model.countDocuments())

```js
const total = await Usuario.countDocuments({ activo: true });
```

## estimatedDocumentCount(): estimar el total

Usa los metadatos de la colección para obtener su cantidad estimada. No acepta filtros de documentos. [Referencia de estimatedDocumentCount](https://mongoosejs.com/docs/api/model.html#Model.estimatedDocumentCount())

```js
const totalEstimado = await Usuario.estimatedDocumentCount();
```

## findAndCount(): consultar y contar

Disponible en versiones recientes. Devuelve `[documentos, total]`; el total considera el filtro antes de la paginación. [Referencia de findAndCount](https://mongoosejs.com/docs/api/model.html#Model.findAndCount())

```js
const [usuarios, total] = await Usuario.findAndCount(
  { activo: true },
  'nombre email',
  { sort: { _id: 1 }, skip: 10, limit: 10 }
);
```

Si tu versión no lo incluye, podés consultar y contar por separado:

```js
const filtro = { activo: true };
const [usuarios, total] = await Promise.all([
  Usuario.find(filtro).sort({ _id: 1 }).skip(10).limit(10),
  Usuario.countDocuments(filtro)
]);
```

## distinct(): obtener valores diferentes

Devuelve un arreglo con los valores únicos de un campo, opcionalmente filtrados. [Referencia de distinct](https://mongoosejs.com/docs/api/model.html#Model.distinct())

```js
const ciudades = await Usuario.distinct('ciudad', { activo: true });
```

## aggregate(): transformar y resumir resultados

Recibe etapas de procesamiento. Este ejemplo agrupa por ciudad y cuenta sus usuarios. Devuelve objetos comunes. [Documentación de agregación](https://mongoosejs.com/docs/queries.html#versus-aggregation)

```js
const resumen = await Usuario.aggregate([
  { $match: { activo: true } },
  { $group: { _id: '$ciudad', cantidad: { $sum: 1 } } }
]);
```

## lean(): obtener objetos comunes

Es un modificador de consulta. Evita construir documentos de Mongoose: el resultado no tiene métodos como `save()`. Es útil cuando solo vas a leer y devolver datos. [Documentación de lean](https://mongoosejs.com/docs/tutorials/lean.html)

```js
const usuarios = await Usuario.find({ activo: true }).lean();
```

## populate(): consultar documentos relacionados

Completá una referencia con los datos del documento relacionado. La configuración de `ref` y los ejemplos están en [[populate]].

## Ejemplo dentro de un controlador

La ruta `/usuarios/:id` aporta el identificador mediante `req.params.id`. El modelo consulta y `res` envía la respuesta.

```js
export const obtenerUsuario = async (req, res, next) => {
  try {
    const usuario = await Usuario.findById(req.params.id);

    if (!usuario) {
      return res.status(404).json({ mensaje: 'Usuario no encontrado' });
    }

    return res.json(usuario);
  } catch (error) {
    next(error);
  }
};
```

Relacionadas: [[Create mongoose]] · [[Update mongoose]] · [[Delete mongoose]].
