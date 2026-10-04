---
title: isBoolean
tags: [express-validator, validacion]
---

# `isBoolean()`

## Sintaxis
```js
body('campo').isBoolean({ strict })
```

## Explicación
Valida valores booleanos. Con `strict: true` limita los valores aceptados a las representaciones estrictas; sin esa opción admite las representaciones usuales de formulario.

## Ejemplo
```js
body('acceptTerms').isBoolean({ strict: true }).toBoolean()
```
