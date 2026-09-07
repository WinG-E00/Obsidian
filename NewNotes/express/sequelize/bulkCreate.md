---
title: bulkCreate - Sequelize
tags: [sequelize, sequelize/escritura]
---
# `bulkCreate`

Inserta varias filas en una operación.

## Sintaxis

```js
Modelo.bulkCreate(arrayDeValores, options)
```

```js
await User.bulkCreate([
  { name: 'Ana' },
  { name: 'Luis' }
], { validate: true });
```

Usa `validate: true` si necesitas ejecutar validaciones por cada instancia.
