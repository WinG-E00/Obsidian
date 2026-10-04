---
title: isUUID
tags: [express-validator, validacion]
---

# `isUUID()`

## Sintaxis
```js
param('id').isUUID(version)
```

## Explicación
Valida un identificador UUID. Se puede indicar la versión (`'4'`, `'7'`, etc.) o usar `'all'` para aceptar todas las versiones admitidas.

## Ejemplo
```js
param('userId').isUUID('4')
```
