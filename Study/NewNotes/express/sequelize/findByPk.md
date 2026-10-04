---
title: findByPk - Sequelize
tags: [sequelize, sequelize/consultas]
---
# `findByPk`

Busca una instancia utilizando su clave primaria.

## Sintaxis

```js
Modelo.findByPk(valorDeLaClave, options)
```

```js
const user = await User.findByPk(12);
```

Es equivalente a una consulta por el campo `id` (o por la clave primaria configurada) y devuelve `null` si no encuentra coincidencias.
