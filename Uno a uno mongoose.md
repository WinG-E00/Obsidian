---
title: Uno a uno mongoose
tags:
  - backend/mongoose
  - relaciones
---

# Relación uno a uno con Mongoose

Una relación **uno a uno por referencia** conecta dos documentos guardados en colecciones distintas. En este ejemplo, un `Perfil` guarda el `_id` de su `Usuario`, y cada usuario puede tener **como máximo un perfil**.

```text
Usuario                       Perfil
  _id  ←──────────────────────  usuario
  nombre                        biografia
```

El campo `usuario` guarda un identificador; al hacer `populate()`, Mongoose consulta el documento relacionado. [Referencias y población](https://mongoosejs.com/docs/populate.html)

## 1. Modelo Usuario y virtual inverso

```js
// models/Usuario.js
import mongoose from 'mongoose';

const { Schema } = mongoose;

const usuarioSchema = new Schema(
  {
    nombre: { type: String, required: true }
  },
  {
    toJSON: { virtuals: true },
    toObject: { virtuals: true }
  }
);

usuarioSchema.virtual('perfil', {
  ref: 'Perfil',
  localField: '_id',
  foreignField: 'usuario',
  justOne: true
});

const Usuario = mongoose.model('Usuario', usuarioSchema);

export default Usuario;
```

Definí el virtual **antes de compilar el modelo**. Permite encontrar el perfil desde el usuario sin guardar otro identificador en `Usuario`.

| Opción del virtual | Significado |
| --- | --- |
| `'perfil'` | Nombre de la propiedad que usás en `populate('perfil')` |
| `ref: 'Perfil'` | Nombre del modelo donde buscar |
| `localField: '_id'` | Campo de Usuario usado para comparar |
| `foreignField: 'usuario'` | Campo de Perfil que contiene la referencia |
| `justOne: true` | Devuelve un documento o `null`, en lugar de un arreglo |

La comparación es **`Usuario._id === Perfil.usuario`** en términos del valor del identificador. `justOne` controla la forma del resultado. [Opciones de VirtualType](https://mongoosejs.com/docs/api/virtualtype.html)

`toJSON: { virtuals: true }` permite incluir el virtual al responder con `res.json(usuario)`; `toObject` lo incluye al convertir el documento a un objeto. Estas opciones no ejecutan `populate()` automáticamente. [Virtual populate](https://mongoosejs.com/docs/populate.html#populate-virtuals)

## 2. Modelo Perfil con la referencia

```js
// models/Perfil.js
import mongoose from 'mongoose';

const { Schema } = mongoose;

const perfilSchema = new Schema({
  biografia: String,
  usuario: {
    type: Schema.Types.ObjectId,
    ref: 'Usuario',
    required: true,
    unique: true
  }
});

const Perfil = mongoose.model('Perfil', perfilSchema);

export default Perfil;
```

| Propiedad de usuario | Función |
| --- | --- |
| `type: Schema.Types.ObjectId` | Guarda un identificador |
| `ref: 'Usuario'` | Indica el nombre del modelo referenciado |
| `required: true` | Exige informar el identificador |
| `unique: true` | Declara un índice único sobre ese campo |

**El índice único impide crear dos perfiles con el mismo usuario.** Debe existir en MongoDB para garantizar la unicidad; `unique` no es un validador de Mongoose. Un duplicado genera normalmente un error `E11000`. [Unicidad e índices](https://mongoosejs.com/docs/validation.html#the-unique-option-is-not-a-validator)

## 3. Crear los documentos y relacionarlos

Con la conexión ya abierta, importá ambos modelos. Adaptá las rutas a tu proyecto:

```js
import Usuario from './models/Usuario.js';
import Perfil from './models/Perfil.js';

async function crearEjemplo() {
  // En desarrollo, con autoIndex habilitado, espera los índices.
  await Perfil.init();

  const usuario = await Usuario.create({ nombre: 'Ana' });

  const perfil = await Perfil.create({
    biografia: 'Estudiante de programación',
    usuario: usuario._id
  });

  return { usuario, perfil };
}
```

Guardás el identificador en `Perfil.usuario`. Si deshabilitaste la creación automática de índices, debés crear el índice único mediante tu gestión de índices. [Guardar referencias](https://mongoosejs.com/docs/populate.html#saving-refs) · [Esperar la creación del índice](https://mongoosejs.com/docs/validation.html#the-unique-option-is-not-a-validator)

## 4. Usar populate desde ambos modelos

Dentro de una función `async`, con ambos modelos registrados y los identificadores correspondientes:

```js
// Desde Usuario hacia Perfil: usa el virtual.
const usuario = await Usuario.findById(idUsuario).populate('perfil');

console.log(usuario?.perfil?.biografia);
```

```js
// Desde Perfil hacia Usuario: usa la referencia guardada.
const perfil = await Perfil.findById(idPerfil).populate('usuario');

console.log(perfil?.usuario?.nombre);
```

| Consulta | Propiedad poblada |
| --- | --- |
| `Usuario.findById(...).populate('perfil')` | `usuario.perfil` |
| `Perfil.findById(...).populate('usuario')` | `perfil.usuario` |

El virtual `perfil` se completa durante la consulta y no se guarda en MongoDB. Si no hay perfil relacionado, el virtual poblado devuelve `null`. [Población](https://mongoosejs.com/docs/populate.html) · [Resultado singular del virtual](https://mongoosejs.com/docs/api/virtualtype.html)

## Qué garantiza esta definición

- Cada perfil debe informar un identificador de usuario.
- El índice único permite como máximo un perfil por usuario; no obliga a todos los usuarios a tener perfil.
- `ref` no comprueba por sí solo que ese usuario exista ni implementa borrado en cascada: esas reglas las resuelve tu aplicación.
- `justOne: true` devuelve un resultado singular; la unicidad depende del índice en la base.

Relacionadas: [[Creacion del modelo mongoose]] · [[Tipos de datos mongoose]] · [[populate]] · [[creacion database con mongose]].
