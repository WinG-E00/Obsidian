---
title: commit - Sequelize
tags: [sequelize, sequelize/transacciones]
---
# `commit`

Confirma manualmente una transacción y hace permanentes sus cambios.

## Sintaxis

```js
transaccion.commit()
```

```js
const t = await sequelize.transaction();
// ...operaciones con { transaction: t }
await t.commit();
```

Se usa en transacciones manuales; las transacciones administradas lo ejecutan automáticamente.
