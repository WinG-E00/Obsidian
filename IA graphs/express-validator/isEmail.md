---
title: isEmail
tags: [express-validator, validacion]
---

# `isEmail()`

## Sintaxis
```js
body('email').isEmail(options)
```

## Explicación
Comprueba que el texto tenga formato de correo electrónico. Admite opciones como `require_tld` o listas de dominios permitidos/bloqueados.

## Ejemplo
```js
body('email').trim().isEmail().withMessage('Ingresá un correo válido')
```
