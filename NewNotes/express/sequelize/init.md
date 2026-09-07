---
title: init - Sequelize
tags: [sequelize, sequelize/modelos]
---
# `init`

Inicializa una clase de modelo con sus atributos y opciones.

## Sintaxis

```js
Modelo.init(atributos, { sequelize, ...opciones })
```

```js
class User extends Model {}
User.init({ name: DataTypes.STRING }, { sequelize, modelName: 'User' });
```

Es la alternativa basada en clases a `sequelize.define()`.
