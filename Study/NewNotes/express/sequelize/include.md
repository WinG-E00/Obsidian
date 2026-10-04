---
title: include - Sequelize
tags: [sequelize, sequelize/consultas]
---
# `include`

Es una opción para cargar asociaciones en la misma consulta (eager loading).

## Sintaxis

```js
Modelo.findAll({ include: [{ model: OtroModelo, as: 'alias' }] })
```

```js
const users = await User.findAll({
  include: [{ model: Order, as: 'orders' }]
});
```

El modelo relacionado debe tener una asociación definida y el alias debe coincidir con `as`.
