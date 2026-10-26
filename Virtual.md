---
title: Virtual
tags:
  - backend/mongoose
---

# Virtual en Mongoose

## Qué es un virtual

Un **virtual es una propiedad de un documento de Mongoose que no se guarda como campo en MongoDB**. Se define en el schema y permite agregar información al documento cuando trabajamos con él en nuestra aplicación.

Hay dos usos habituales:

- **Virtual calculado:** obtiene un valor a partir de otros campos, como un nombre completo a partir de nombre y apellido.
- **Virtual de población:** permite consultar documentos relacionados mediante [[populate]]. Este es el que usamos para obtener la habilitación desde una tienda.

Definir un virtual de población configura cómo buscar los documentos relacionados. **La búsqueda se realiza cuando usamos `populate()`**, no por el solo hecho de definir el virtual.

## Conceptos previos

| Concepto | Qué significa |
|---|---|
| Schema | Define la estructura y configuración de los documentos. |
| Modelo | Se crea con `model()` y permite consultar y guardar documentos. |
| Documento | Un registro concreto, como una tienda o una habilitación. |
| Colección | Conjunto de documentos en MongoDB; es una comparación aproximada con una tabla. |
| Referencia | Un campo que guarda el identificador de otro documento. |
| `ref` | Indica el nombre del modelo relacionado registrado con `model()`. No es el nombre del archivo ni necesariamente el de la colección. |

En nuestro caso, `Habilitacion` guarda una referencia a `Store` en el campo `tienda`. Ese campo contiene un `ObjectId`, no todos los datos de la tienda.

## Para quién se crea el virtual

**El schema sobre el que llamamos `.virtual()` es el que recibe la propiedad virtual.**

```js
storeSchema.virtual('habilitacion', { /* opciones */ });
```

Aquí creamos la propiedad `habilitacion` para los documentos de `Store`. El objetivo es poder consultar una tienda y obtener su habilitación.

En este ejemplo usamos el virtual del lado que no guarda la referencia: la tienda no necesita guardar también el ID de la habilitación. Esta es una forma habitual de usarlo, no una regla que limite todos los virtuals.

## Estructura del virtual de población

```js
schema.virtual('nombreDelVirtual', {
  ref: 'ModeloDondeBuscar',
  localField: 'campoDelDocumentoActual',
  foreignField: 'campoDelDocumentoBuscado',
  justOne: true
});
```

| Opción | En nuestro caso | Qué indica |
|---|---|---|
| Nombre del virtual | `'habilitacion'` | Propiedad que recibirá el resultado y nombre usado en `.populate('habilitacion')`. |
| `ref` | `'Habilitacion'` | Modelo donde Mongoose buscará los documentos relacionados. |
| `localField` | `'_id'` | Campo de la tienda cuyo valor se utilizará para buscar coincidencias. |
| `foreignField` | `'tienda'` | Campo de la habilitación que debe contener el mismo valor. |
| `justOne` | `true` | Devuelve un documento o `null`. Con `false`, devuelve un arreglo, que será `[]` si no hay coincidencias. |

> [!important] Buscar coincidencias no es elegir campos para mostrar
> `localField` y `foreignField` indican qué valores comparar. No seleccionan las propiedades que se devolverán ni conceden permisos de acceso. Para elegir propiedades usamos `select` en `populate()`.

`localField` no tiene que ser siempre `_id`: puede ser otro campo cuyos valores coincidan con los del `foreignField`.

## Ejemplo completo: habilitación y tienda

### Modelo Habilitacion: guarda la referencia

```js
// models/Habilitacion.js
import { model, Schema } from 'mongoose';

const habilitacionSchema = new Schema({
  numero: {
    type: Number,
    required: true,
    unique: true
  },
  actividad: {
    type: String,
    required: true,
    unique: true
  },
  vigencia: {
    fechaEmision: { type: Date, required: true },
    fechaVencimiento: { type: Date, required: true }
  },
  tienda: {
    type: Schema.Types.ObjectId,
    ref: 'Store',
    required: true,
    unique: true
  }
});

export const HabilitacionModel = model('Habilitacion', habilitacionSchema);
```

`ref: 'Store'` permite completar el campo `tienda` con los datos de ese modelo cuando hacemos `.populate('tienda')`.

### Modelo Store: recibe el virtual

```js
// models/Store.js
import { model, Schema } from 'mongoose';

const storeSchema = new Schema({
  name: {
    type: String,
    required: true,
    unique: true
  },
  location: {
    type: String,
    required: true
  },
  estado: {
    type: String,
    enum: ['Activo', 'Inactivo'],
    default: 'Activo'
  }
});

// Definir el virtual antes de compilar el modelo con model().
storeSchema.virtual('habilitacion', {
  ref: 'Habilitacion',
  localField: '_id',
  foreignField: 'tienda',
  justOne: true
});

storeSchema.set('toJSON', { virtuals: true });
storeSchema.set('toObject', { virtuals: true });

export const StoreModel = model('Store', storeSchema);
```

La instrucción se lee así: **“Para esta tienda, buscá en el modelo Habilitacion un documento cuyo campo tienda coincida con el _id de la tienda actual, y colocá el resultado en habilitacion”.**

Por ejemplo, si la tienda tiene el identificador `ObjectId('507f1f77bcf86cd799439011')`, Mongoose busca una habilitación cuyo campo `tienda` contenga ese mismo identificador.

## Consultar en ambas direcciones

Con la conexión a MongoDB configurada y ambos modelos registrados, dentro de una función `async`:

```js
import { StoreModel } from './models/Store.js';
import { HabilitacionModel } from './models/Habilitacion.js';

// Desde la tienda: usamos el virtual.
const tienda = await StoreModel.findById(tiendaId)
  .populate('habilitacion');

console.log(tienda?.habilitacion);

// Desde la habilitación: usamos la referencia guardada.
const habilitacion = await HabilitacionModel.findById(habilitacionId)
  .populate('tienda');

console.log(habilitacion?.tienda);
```

Los identificadores `tiendaId` y `habilitacionId` son los de los documentos que queremos consultar. Si el documento principal no existe, `findById()` devuelve `null`.

No necesitamos crear un virtual en `Habilitacion` para consultar su tienda: ya tiene el campo real `tienda` con su `ref`.

### Elegir qué propiedades traer

```js
const tienda = await StoreModel.findById(tiendaId).populate({
  path: 'habilitacion',
  select: 'numero actividad tienda'
});
```

`path` identifica el virtual y `select` elige las propiedades del documento relacionado. En virtual populate debemos incluir el `foreignField` en la selección: aquí es `tienda`. `_id` también se incluye por defecto.

## Qué significa uno a uno en este ejemplo

`justOne: true` define la forma del resultado, pero **no impide que se guarden varias habilitaciones para la misma tienda**.

La restricción depende del índice único declarado mediante `unique: true` en `habilitacionSchema.tienda`, cuando ese índice existe en MongoDB. `unique` configura un índice; no es un validador de Mongoose.

`required: true` exige que cada habilitación tenga una referencia a una tienda, pero no comprueba por sí solo que esa tienda exista. Tampoco obliga a que todas las tiendas tengan una habilitación: una tienda sin coincidencias tendrá `habilitacion: null` al poblar el virtual.

Con `justOne: false`, el resultado sería un arreglo incluso si hubiera una sola coincidencia. Esa opción es útil para relaciones como un autor con varios artículos, pero no crea ni impone por sí misma la relación uno a muchos.

## Mostrar el virtual en una respuesta JSON

```js
storeSchema.set('toJSON', { virtuals: true });
storeSchema.set('toObject', { virtuals: true });
```

`toJSON` permite incluir los virtuals al serializar el documento, por ejemplo con `res.json(tienda)`. `toObject` los incluye al convertirlo mediante `tienda.toObject()`.

Estas opciones **no ejecutan `populate()`**. Primero debemos consultar la habilitación para que sus datos estén disponibles en el resultado.

## Qué se guarda realmente

En MongoDB, la habilitación guarda el ID de la tienda en `tienda`. El virtual no agrega un campo persistente `habilitacion` al documento de la tienda y `populate()` no guarda una copia de los datos relacionados.

Tampoco hay sincronización o eliminación en cascada automática: borrar una tienda no borra su habilitación por haber definido este virtual. Ese comportamiento requiere lógica adicional.

## Fuentes

- [Virtuals de Mongoose](https://mongoosejs.com/docs/tutorials/virtuals.html)
- [Virtual populate y sus opciones](https://mongoosejs.com/docs/populate.html#populate-virtuals)

Relacionada: [[populate]].
