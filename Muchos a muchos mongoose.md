---
title: Muchos a muchos mongoose
tags:
  - backend/mongoose
  - relaciones
---

# Relación muchos a muchos con Mongoose

Un **estudiante puede estar en varios cursos** y **cada curso puede tener varios estudiantes**. En este ejemplo, cada curso guarda un arreglo de identificadores de estudiantes; el virtual del estudiante representa sus cursos relacionados.

```js
import mongoose from 'mongoose';

const { Schema } = mongoose;

// PRIMER MODELO: Estudiante.
const estudianteSchema = new Schema(
  {
    nombre: { type: String, required: true }
  },
  {
    toJSON: { virtuals: true },
    toObject: { virtuals: true }
  }
);

// SEGUNDO MODELO: Curso.
const cursoSchema = new Schema({
  titulo: { type: String, required: true },

  // Un curso puede guardar los _id de varios estudiantes.
  // El mismo estudiante puede aparecer en varios cursos.
  estudiantes: [
    {
      type: Schema.Types.ObjectId,
      ref: 'Estudiante'
    }
  ]
});

// VIRTUAL INVERSO: cursos relacionados con cada estudiante.
// Se define antes de compilar los modelos.
estudianteSchema.virtual('cursos', {
  ref: 'Curso',                // Modelo en el que se buscan los cursos.
  localField: '_id',           // Identificador del estudiante actual.
  foreignField: 'estudiantes', // Arreglo del curso que contiene ese identificador.
  justOne: false              // Resultado como arreglo: puede haber varios cursos.
});

// La relación coincide cuando Curso.estudiantes contiene Estudiante._id.
// El virtual no se guarda en MongoDB ni se carga automáticamente.
// toJSON y toObject permiten incluirlo en la salida cuando esté cargado.

// Compilar y exportar ambos modelos.
const Estudiante = mongoose.model('Estudiante', estudianteSchema);
const Curso = mongoose.model('Curso', cursoSchema);

export { Estudiante, Curso };
```

[Documentación de referencias y virtuales](https://mongoosejs.com/docs/populate.html#populate-virtuals) · [Opciones del virtual](https://mongoosejs.com/docs/api/virtualtype.html)
