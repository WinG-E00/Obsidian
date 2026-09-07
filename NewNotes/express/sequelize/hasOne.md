---
title: hasOne - Sequelize
tags: [sequelize, sequelize/relaciones]
---
# `hasOne`

Define una relación uno a uno en la que el modelo origen posee una instancia del modelo destino.

## Sintaxis

```js
Origen.hasOne(Destino, options)
```

```js
User.hasOne(Profile);
Profile.belongsTo(User);
```

Genera métodos de asociación como `getProfile()` y `createProfile()`.
