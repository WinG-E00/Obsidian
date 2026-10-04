---
title: findAll - Sequelize
tags: [sequelize, sequelize/consultas]
---
# `findAll`

Devuelve todas las filas que cumplen las condiciones indicadas.

## Sintaxis

```js
Modelo.findAll(options)
```

```js
const users = await User.findAll({
  where: { active: true },
  order: [['createdAt', 'DESC']],
  limit: 20
});
```

Usa `where` para filtrar y `include` para cargar asociaciones. El resultado siempre es un arreglo, aunque no encuentre registros.
