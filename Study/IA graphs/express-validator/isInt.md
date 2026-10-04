---
title: isInt
tags: [express-validator, validacion]
---

# `isInt()`

## Sintaxis
```js
body('campo').isInt({ min, max, gt, lt })
```

## Explicación
Valida que el valor represente un número entero. Las opciones permiten delimitar un rango o usar comparaciones estrictas.

## Ejemplo
```js
body('age').isInt({ min: 18, max: 120 }).toInt()
```
