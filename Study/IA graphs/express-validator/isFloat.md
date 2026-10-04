---
title: isFloat
tags: [express-validator, validacion]
---

# `isFloat()`

## Sintaxis
```js
body('campo').isFloat({ min, max, gt, lt })
```

## Explicación
Comprueba que el valor represente un número decimal, con límites opcionales. Si necesitás usarlo como número después, encadená `toFloat()`.

## Ejemplo
```js
body('price').isFloat({ min: 0 }).toFloat()
```
