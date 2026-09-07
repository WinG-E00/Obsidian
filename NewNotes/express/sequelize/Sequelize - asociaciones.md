---
title: Sequelize - asociaciones
tags:
  - express/sequelize
  - sequelize/relaciones
---

# Asociaciones

Las asociaciones conectan modelos y permiten consultar relaciones con `include`.

```js
User.hasOne(Profile);
Profile.belongsTo(User);

User.hasMany(Order);
Order.belongsTo(User);

User.belongsToMany(Role, { through: 'UserRoles' });
Role.belongsToMany(User, { through: 'UserRoles' });
```

## Métodos generados

Según la asociación y sus alias, Sequelize genera métodos como `getOrders()`, `createOrder()`, `addOrder()`, `removeOrder()` y `setOrders()`.

```js
const user = await User.findByPk(1);
const orders = await user.getOrders();
const order = await user.createOrder({ total: 125 });
```

## Carga eager

```js
const user = await User.findByPk(1, {
  include: [{ model: Order, as: 'orders' }]
});
```

> [!tip] Alias
> Si defines `as`, usa el mismo alias en `include` y en los métodos generados.

Relacionado: [[Sequelize - operadores y opciones]] · [[Sequelize - definición y sincronización]]
