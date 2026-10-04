---
title: normalizeEmail
tags: [express-validator, sanitizacion]
---

# `normalizeEmail()`

## Sintaxis
```js
body('email').normalizeEmail(options)
```

## Explicación
Sanitiza un correo electrónico para llevarlo a una forma consistente, por ejemplo normalizando mayúsculas. Debe usarse junto con `isEmail()`, no como sustituto de la validación.

## Ejemplo
```js
body('email').trim().isEmail().normalizeEmail()
```
