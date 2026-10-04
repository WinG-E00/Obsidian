---
title: isObject
tags: [express-validator, validacion]
---

# `isObject()`

## Sintaxis
```js
body('campo').isObject({ strict: true })
```

## Explicación
Verifica que el valor sea un objeto. Con `strict: true` (el comportamiento predeterminado) no acepta arreglos ni `null`.

## Ejemplo
```js
body('address').isObject({ strict: true })
```
