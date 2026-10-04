---
title: findOne - Sequelize
tags: [sequelize, sequelize/consultas]
---
# `findOne`

Busca el primer registro que coincide con los criterios.

## Sintaxis

```js
Modelo.findOne({ where, ...opciones })
```

```js
const user = await User.findOne({ where: { email: 'ana@example.com' } });
```

Devuelve una instancia o `null` si no existe ningún registro.
