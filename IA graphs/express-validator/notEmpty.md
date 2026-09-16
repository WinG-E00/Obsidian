---
title: notEmpty
tags: [express-validator, validacion]
aliases: [isNotEmpy]
---

# `notEmpty()`

## Sintaxis
```js
body('campo').notEmpty()
```

## Explicación
Comprueba que el valor sea una cadena que no esté vacía. Es equivalente a usar `.not().isEmpty()`. Para rechazar valores formados solo por espacios, aplica antes `trim()`.

## Ejemplo
```js
body('name').trim().notEmpty().withMessage('El nombre es obligatorio')
```
