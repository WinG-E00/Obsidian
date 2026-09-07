---
title: define - Sequelize
tags: [sequelize, sequelize/modelos]
---
# `define`

Define un modelo a partir del nombre, sus atributos y sus opciones.

## Sintaxis

```js
sequelize.define(nombre, atributos, opciones)
```

```js
const User = sequelize.define('User', {
  name: DataTypes.STRING,
  email: { type: DataTypes.STRING, unique: true }
});
```

Devuelve la clase de modelo que luego usarás con consultas y asociaciones.
