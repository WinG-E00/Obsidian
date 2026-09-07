---
title: create - Sequelize
tags: [sequelize, sequelize/escritura]
---
# `create`

Valida y persiste una nueva instancia en una sola operación.

## Sintaxis

```js
Modelo.create(values, options)
```

```js
const user = await User.create({ name: 'Ana', email: 'ana@example.com' });
```

Devuelve la instancia creada, incluyendo normalmente su clave primaria generada.
