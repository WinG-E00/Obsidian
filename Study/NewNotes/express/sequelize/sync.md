---
title: sync - Sequelize
tags: [sequelize, sequelize/modelos]
---
# `sync`

Sincroniza la definición de los modelos con las tablas de la base de datos.

## Sintaxis

```js
sequelize.sync(options)
Modelo.sync(options)
```

```js
await sequelize.sync();
```

`force: true` elimina y recrea tablas; `alter: true` intenta ajustarlas. Para producción se recomiendan migraciones.
