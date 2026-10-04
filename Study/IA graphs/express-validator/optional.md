---
title: optional
tags: [express-validator, validacion]
---

# `optional()`

## Sintaxis
```js
body('campo').optional(options).isEmail()
```

## Explicación
Marca la cadena como opcional: si el campo no está presente, se omiten sus validadores. Por defecto solo omite `undefined`; con `{ values: 'null' }` también omite `null`, y con `{ values: 'falsy' }` omite valores falsy.

## Ejemplo
```js
body('secondaryEmail').optional().isEmail()
```
