---
title: Create sequelize
tags:
  - backend/sequelize
  - crud
---

# Create sequelize

**C — Create** reúne las operaciones para crear registros. Se llaman sobre el modelo dentro del controlador: por ejemplo, `Usuario.create(...)`. Los ejemplos usan **Sequelize 6**, un modelo `Usuario` ya configurado y módulos ES:

```js
import Usuario from './models/Usuario.js';
```

Adaptá esa ruta y los campos a tu proyecto. Ejecutá los ejemplos con `await` dentro de una función `async`. Cada bloque es un ejemplo independiente.

## create(): crear un registro

Recibe los datos y devuelve la instancia guardada, desde la que podés leer su `id` y sus campos.

```js
const usuario = await Usuario.create({
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});

console.log(usuario.id);
```

Podés limitar los campos aceptados con un segundo argumento: `{ fields: ['nombre', 'email'] }`. [Documentación de create](https://sequelize.org/docs/v6/core-concepts/model-querying-basics/#simple-insert-queries)

## bulkCreate(): crear varios registros

Recibe un arreglo de datos y devuelve un arreglo de instancias. `validate: true` activa las validaciones de cada registro. [Documentación de bulkCreate](https://sequelize.org/docs/v6/core-concepts/model-querying-basics/#creating-in-bulk)

```js
const usuarios = await Usuario.bulkCreate([
  { nombre: 'Ana', email: 'ana@ejemplo.com' },
  { nombre: 'Luis', email: 'luis@ejemplo.com' }
], { validate: true });
```

## build() + save(): preparar y después guardar

`build()` crea una instancia en memoria, sin consultar la base. No necesita `await`. `save()` guarda esa instancia y devuelve la instancia persistida. [Documentación de instancias](https://sequelize.org/docs/v6/core-concepts/model-instances/#creating-an-instance)

```js
const usuario = Usuario.build({
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});

usuario.nombre = 'Ana María';
await usuario.save();
```

## findOrCreate(): buscar o crear (R + C)

`where` define la búsqueda; `defaults` aporta datos para la creación. Devuelve `[usuario, creado]`: `creado` es `true` si insertó. Si ya existía, lo devuelve sin actualizarlo. [Documentación de findOrCreate](https://sequelize.org/docs/v6/core-concepts/model-querying-finders/#findorcreate)

```js
const [usuario, creado] = await Usuario.findOrCreate({
  where: { email: 'ana@ejemplo.com' },
  defaults: { nombre: 'Ana' }
});
```

Para que un email identifique un único usuario, definilo como `unique` en el modelo y en la base.

## upsert(): crear o actualizar (C + U)

Inserta o actualiza según un conflicto de clave primaria o clave única definida en el modelo. No usa un `where` como `update()`. Devuelve `[instancia, creado]`; el indicador puede ser `null` según el dialecto. [Referencia de upsert](https://sequelize.org/api/v6/class/src/model.js~model#static-method-upsert)

```js
const [usuario, creado] = await Usuario.upsert({
  id: 1,
  nombre: 'Ana',
  email: 'ana@ejemplo.com'
});
```

Para actualizar un registro existente con `save()`, seguí en [[Update sequelize#save(): guardar cambios de una instancia]].

Relacionadas: [[Read sequelize]] · [[Update sequelize]] · [[Delete sequelize]].
