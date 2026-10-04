---
title: destroy - Sequelize
tags: [sequelize, sequelize/escritura]
---
# `destroy`

Elimina las filas que cumplen una condición.

## Sintaxis

```js
Modelo.destroy({ where, ...opciones })
```

```js
const deleted = await User.destroy({ where: { id: 12 } });
```

Devuelve la cantidad eliminada. Con `paranoid: true`, realiza borrado lógico y puede revertirse con `restore()`.
