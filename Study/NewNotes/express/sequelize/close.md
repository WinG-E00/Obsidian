---
title: close - Sequelize
tags: [sequelize, sequelize/conexion]
---
# `close`

Cierra todas las conexiones del pool de Sequelize.

## Sintaxis

```js
sequelize.close()
```

```js
await sequelize.close();
```

Úsalo al apagar una aplicación o al terminar una tarea que ya no necesita la conexión.
