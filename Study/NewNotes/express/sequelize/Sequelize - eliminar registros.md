---
title: Sequelize - eliminar registros
tags:
  - express/sequelize
  - sequelize/escritura
---

# Eliminar registros

## `destroy`

Elimina las filas que cumplen `where` y devuelve la cantidad eliminada.

```js
const deleted = await User.destroy({ where: { id: 12 } });
```

## Borrado lógico

Si el modelo tiene `paranoid: true`, `destroy` establece `deletedAt` en lugar de borrar físicamente.

```js
const User = sequelize.define('User', { name: DataTypes.STRING }, {
  paranoid: true
});

await User.destroy({ where: { id: 12 } });
const deletedUser = await User.findByPk(12, { paranoid: false });
await deletedUser.restore();
```

> [!warning] Precaución
> `destroy({ where: {} })` puede eliminar todos los registros. Usa siempre una condición explícita salvo que esa sea la intención.

Relacionado: [[Sequelize - métodos de instancia]] · [[Sequelize - transacciones]]
