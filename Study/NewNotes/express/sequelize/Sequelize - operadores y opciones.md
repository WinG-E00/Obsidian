---
title: Sequelize - operadores y opciones
tags:
  - express/sequelize
  - sequelize/consultas
---

# Operadores y opciones

Importa los operadores desde Sequelize para construir condiciones más expresivas.

```js
const { Op } = require('sequelize');

const users = await User.findAll({
  where: {
    age: { [Op.gte]: 18 },
    name: { [Op.like]: 'A%' },
    status: { [Op.in]: ['active', 'pending'] }
  },
  attributes: ['id', 'name'],
  order: [['name', 'ASC']],
  limit: 10,
  offset: 20
});
```

Operadores frecuentes: `Op.eq`, `Op.ne`, `Op.gt`, `Op.gte`, `Op.lt`, `Op.lte`, `Op.like`, `Op.in`, `Op.notIn`, `Op.between`, `Op.or` y `Op.and`.

## Cargar asociaciones con `include`

```js
const orders = await Order.findAll({
  include: [{ model: User, attributes: ['id', 'name'] }]
});
```

Relacionado: [[Sequelize - métodos de consulta]] · [[Sequelize - asociaciones]]
