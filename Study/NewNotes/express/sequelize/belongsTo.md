---
title: belongsTo - Sequelize
tags: [sequelize, sequelize/relaciones]
---
# `belongsTo`

Indica que un modelo pertenece a otro y normalmente contiene su clave foránea.

## Sintaxis

```js
Origen.belongsTo(Padre, options)
```

```js
Order.belongsTo(User, { foreignKey: 'userId' });
```

Permite cargar el padre con `include` y usar métodos como `getUser()`.
