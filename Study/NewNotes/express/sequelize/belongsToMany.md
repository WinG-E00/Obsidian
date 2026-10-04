---
title: belongsToMany - Sequelize
tags: [sequelize, sequelize/relaciones]
---
# `belongsToMany`

Define una relación muchos a muchos mediante una tabla intermedia.

## Sintaxis

```js
Origen.belongsToMany(Destino, { through: TablaIntermedia })
```

```js
User.belongsToMany(Role, { through: 'UserRoles' });
Role.belongsToMany(User, { through: 'UserRoles' });
```

Genera métodos para añadir, quitar y consultar varios registros relacionados.
