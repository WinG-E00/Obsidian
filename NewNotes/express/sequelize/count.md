---
title: count - Sequelize
tags: [sequelize, sequelize/consultas]
---
# `count`

Cuenta cuántas filas cumplen una condición.

## Sintaxis

```js
Modelo.count(options)
```

```js
const activeUsers = await User.count({ where: { active: true } });
```

Devuelve un número y resulta útil para totales, paginación y comprobaciones de existencia.
