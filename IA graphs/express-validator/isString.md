---
title: isString
tags: [express-validator, validacion]
---

# `isString()`

## Sintaxis
```js
body('campo').isString()
```

## Explicación
Valida que el valor sea de tipo JavaScript `string`. Es útil antes de aplicar reglas de texto como longitud o expresiones regulares.

## Ejemplo
```js
body('displayName').isString().trim()
```
