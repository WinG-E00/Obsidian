---
title: findOrCreate - Sequelize
tags: [sequelize, sequelize/consultas]
---
# `findOrCreate`

Busca un registro y lo crea si no existe.

## Sintaxis

```js
Modelo.findOrCreate({ where, defaults, ...opciones })
```

```js
const [user, created] = await User.findOrCreate({
  where: { email: 'ana@example.com' },
  defaults: { name: 'Ana' }
});
```

Devuelve `[instancia, creado]`; `creado` es `true` cuando Sequelize insertó el registro.
