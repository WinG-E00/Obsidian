---
title: Uno a muchos mongoose
tags:
  - backend/mongoose
  - relaciones
---

# Relación uno a muchos con Mongoose

Un **autor puede tener muchos artículos** y **cada artículo referencia a un autor**. La referencia se guarda en el artículo; el virtual del autor permite representar sus artículos relacionados.

```js
import mongoose from 'mongoose';

const { Schema } = mongoose;


// PRIMER MODELO: Autor, el lado «uno».
const autorSchema = new Schema(
  {
    nombre: { type: String, required: true }
  },
  {
    toJSON: { virtuals: true },
    toObject: { virtuals: true }
  }
);



// SEGUNDO MODELO: Articulo, el lado «muchos».
const articuloSchema = new Schema({
  titulo: { type: String, required: true },
  contenido: String,

  // Cada artículo guarda el _id de su autor.
  // El mismo autor puede aparecer en varios artículos.
  autor: {
    type: Schema.Types.ObjectId,
    ref: 'Autor',
    required: true
  }
});



// VIRTUAL INVERSO: artículos relacionados con cada autor.
// Se define antes de compilar los modelos.
autorSchema.virtual('articulos', {
  ref: 'Articulo',          // Modelo en el que se buscan los artículos.
  localField: '_id',        // Identificador del autor actual.
  foreignField: 'autor',    // Campo del artículo que guarda ese identificador.
  justOne: false           // Resultado como arreglo: puede haber varios artículos.
});



// El virtual no se guarda en MongoDB ni se carga automáticamente.
// toJSON y toObject permiten incluirlo en la salida cuando esté cargado.

// Compilar y exportar ambos modelos.
const Autor = mongoose.model('Autor', autorSchema);
const Articulo = mongoose.model('Articulo', articuloSchema);

export { Autor, Articulo };
```

[Documentación de referencias y virtuales](https://mongoosejs.com/docs/populate.html#populate-virtuals) · [Opciones del virtual](https://mongoosejs.com/docs/api/virtualtype.html)
