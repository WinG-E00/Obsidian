---
title: isLength
tags: [express-validator, validacion]
---

# `isLength()`

## Sintaxis
```js
body('campo').isLength({ min, max })
```

## Explicación
Valida que la longitud de una cadena esté dentro del rango indicado. Puede usarse solo `min`, solo `max` o ambos.

## Ejemplo
```js
body('password').isLength({ min: 8, max: 64 })
```
