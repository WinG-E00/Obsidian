---
title: upsert - Sequelize
tags: [sequelize, sequelize/escritura]
---
# `upsert`

Crea un registro o actualiza el existente según la clave primaria o una restricción única.

## Sintaxis

```js
Modelo.upsert(values, options)
```

```js
await User.upsert({ email: 'ana@example.com', name: 'Ana' });
```

Es útil para sincronizar datos sin hacer primero una consulta separada.
