---
title: rollback - Sequelize
tags: [sequelize, sequelize/transacciones]
---
# `rollback`

Revierte todos los cambios de una transacción que todavía no fue confirmada.

## Sintaxis

```js
transaccion.rollback()
```

```js
try {
  // ...operaciones con { transaction: t }
  await t.commit();
} catch (error) {
  await t.rollback();
  throw error;
}
```

Después de un `rollback`, la transacción no debe reutilizarse.
