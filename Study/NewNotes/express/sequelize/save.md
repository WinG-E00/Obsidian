---
title: save - Sequelize
tags: [sequelize, sequelize/instancias]
---
# `save`

Persiste los cambios pendientes de una instancia.

## Sintaxis

```js
instancia.save(options)
```

```js
const user = await User.findByPk(12);
user.name = 'Ana María';
await user.save();
```

Ejecuta las validaciones y hooks configurados para guardar la instancia.
