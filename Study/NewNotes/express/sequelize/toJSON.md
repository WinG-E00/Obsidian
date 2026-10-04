---
title: toJSON - Sequelize
tags: [sequelize, sequelize/instancias]
---
# `toJSON`

Convierte una instancia en un objeto plano serializable.

## Sintaxis

```js
instancia.toJSON()
```

```js
res.json(user.toJSON());
```

Es especialmente útil al devolver modelos desde una API o al convertirlos a JSON.
