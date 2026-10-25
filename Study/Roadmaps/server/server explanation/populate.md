---
title: populate
tags:
  - backend/mongoose
  - crud/read
---

# populate

**`populate()` consulta documentos referenciados y coloca sus datos en el resultado.** En tu canvas pertenece a [[Read mongoose]]. Por ejemplo, una publicación guarda el `_id` de su autor; al consultar, podés obtener también su nombre y email. [Documentación de populate](https://mongoosejs.com/docs/populate.html)

## 1. Configurar los modelos

Usamos módulos ES (`"type": "module"`). Estos archivos definen los modelos; la conexión a MongoDB debe estar configurada antes de ejecutar las operaciones.

```js
// models/Usuario.js
import { Schema, model } from 'mongoose';

const usuarioSchema = new Schema({
  nombre: String,
  email: String
});

export default model('Usuario', usuarioSchema);
```

```js
// models/Publicacion.js
import { Schema, model } from 'mongoose';

const publicacionSchema = new Schema({
  titulo: String,
  autor: {
    type: Schema.Types.ObjectId,
    ref: 'Usuario',
    required: true
  }
});

export default model('Publicacion', publicacionSchema);
```

`ObjectId` indica el tipo del identificador. **`ref: 'Usuario'` señala el nombre del modelo registrado con `model()`**, no el archivo. Ambos modelos deben estar registrados; los imports del siguiente ejemplo lo hacen.

## 2. Guardar la referencia

Dentro de una función `async`, creamos al autor y guardamos su identificador en la publicación:

```js
import Usuario from './models/Usuario.js';
import Publicacion from './models/Publicacion.js';

const usuario = await Usuario.create({
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});

const publicacion = await Publicacion.create({
  titulo: 'Aprendiendo Mongoose',
  autor: usuario._id
});
```

## 3. Consultar con populate()

Continuando el ejemplo anterior:

```js
const sinPopulate = await Publicacion.findById(publicacion._id);
console.log(sinPopulate.autor); // ObjectId del usuario

const conPopulate = await Publicacion.findById(publicacion._id)
  .populate('autor');

console.log(conPopulate.autor.nombre); // Ana
console.log(conPopulate.autor.email);  // ana@ejemplo.com
```

**`'autor'` es el campo que querés completar.** Mongoose usa su `ref` para buscar al usuario. También podés encadenarlo a `find()` o `findOne()`. [Referencia de Query.populate](https://mongoosejs.com/docs/api/query.html#Query.prototype.populate())

## 4. Elegir los campos relacionados

El segundo argumento selecciona los datos del autor; `_id` se incluye por defecto:

```js
const publicaciones = await Publicacion.find()
  .populate('autor', 'nombre email');
```

Con opciones, la misma selección se escribe:

```js
const publicaciones = await Publicacion.find().populate({
  path: 'autor',
  select: 'nombre email'
});
```

`path` identifica la referencia y `select` selecciona sus campos. Ambos bloques son alternativas.

## Referencias múltiples y resultados vacíos

Un arreglo se define así dentro del esquema:

```js
const campos = {
  colaboradores: [{ type: Schema.Types.ObjectId, ref: 'Usuario' }]
};
```

Después usás `.populate('colaboradores')`. Si no encuentra documentos relacionados, una referencia individual queda en `null` y un arreglo sin coincidencias queda en `[]`. [Resultados sin documento relacionado](https://mongoosejs.com/docs/populate.html#what-if-theres-no-foreign-document)

**`populate()` no guarda esos datos dentro de la publicación:** completa el resultado en memoria mediante consultas adicionales. Guardar la referencia y consultar al autor son pasos diferentes.

Relacionadas: [[Read mongoose]] · [[Create mongoose]].
