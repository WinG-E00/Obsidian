---
title: isArray
tags: [express-validator, validacion]
---

# `isArray()`

## Sintaxis
```js
body('campo').isArray({ min, max })
```

## Explicación
Comprueba que el valor sea un arreglo. Las opciones `min` y `max` permiten limitar su cantidad de elementos.

## Ejemplo
```js
body('tags').isArray({ min: 1, max: 5 })
```
