---
title: Sequelize - crear y actualizar registros
tags:
  - express/sequelize
  - sequelize/escritura
---

# Crear y actualizar registros

## `create`

Valida y guarda una instancia en una sola operación.

```js
const user = await User.create({ name: 'Ana', email: 'ana@example.com' });
```

## `bulkCreate`

Inserta varias filas. Usa `validate: true` si también necesitas ejecutar validaciones por instancia.

```js
await User.bulkCreate([
  { name: 'Ana', email: 'ana@example.com' },
  { name: 'Luis', email: 'luis@example.com' }
], { validate: true });
```

## `update`

Actualiza todas las filas que cumplen `where` y devuelve `[cantidadActualizada]`.

```js
const [updated] = await User.update(
  { active: false },
  { where: { lastLogin: null } }
);
```

## `upsert`

Crea o actualiza según la clave primaria o una restricción única.

```js
await User.upsert({ email: 'ana@example.com', name: 'Ana' });
```

Relacionado: [[Sequelize - eliminar registros]] · [[Sequelize - transacciones]]
