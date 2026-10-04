---
title: transaction - Sequelize
tags: [sequelize, sequelize/transacciones]
---
# `transaction`

Inicia una transacción para agrupar varias operaciones atómicas.

## Sintaxis

```js
sequelize.transaction(callback)
sequelize.transaction(options, callback)
```

```js
await sequelize.transaction(async (t) => {
  const user = await User.create({ name: 'Ana' }, { transaction: t });
  await Order.create({ userId: user.id }, { transaction: t });
});
```

En la forma administrada, Sequelize confirma al finalizar correctamente y revierte si ocurre un error.
