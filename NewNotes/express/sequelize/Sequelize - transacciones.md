---
title: Sequelize - transacciones
tags:
  - express/sequelize
  - sequelize/transacciones
---

# Transacciones

Una transacción agrupa operaciones para que se confirmen juntas o se reviertan juntas.

## Transacción administrada

Sequelize hace `commit` si la función termina correctamente y `rollback` si lanza un error.

```js
await sequelize.transaction(async (t) => {
  const user = await User.create({ name: 'Ana' }, { transaction: t });
  await Order.create({ userId: user.id, total: 100 }, { transaction: t });
});
```

## Transacción manual

```js
const t = await sequelize.transaction();
try {
  await User.update({ active: true }, { where: { id: 1 }, transaction: t });
  await t.commit();
} catch (error) {
  await t.rollback();
  throw error;
}
```

Pasa `{ transaction: t }` a cada consulta que deba pertenecer a la transacción.

Relacionado: [[Sequelize - crear y actualizar registros]] · [[Sequelize - eliminar registros]]
