---
title: hasMany - Sequelize
tags: [sequelize, sequelize/relaciones]
---
# `hasMany`

Define una relación uno a muchos.

## Sintaxis

```js
Origen.hasMany(Destino, options)
```

```js
User.hasMany(Order, { foreignKey: 'userId' });
```

Genera métodos como `getOrders()`, `addOrder()` y `createOrder()`.
