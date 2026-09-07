---
title: update - Sequelize
tags: [sequelize, sequelize/escritura]
---
# `update`

Actualiza los registros que coinciden con `where`.

## Sintaxis

```js
Modelo.update(values, { where, ...opciones })
```

```js
const [cantidad] = await User.update(
  { active: false },
  { where: { id: 12 } }
);
```

La actualización estática devuelve un arreglo cuyo primer elemento es la cantidad de filas afectadas. En una instancia, `user.update(values)` actualiza y guarda solo esa instancia.
