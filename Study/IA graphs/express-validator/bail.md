---
title: bail
tags: [express-validator, validacion]
---

# `bail()`

## Sintaxis
```js
body('campo').isEmail().bail().custom(validator)
```

## Explicación
Detiene esa cadena de validación cuando falló un validador anterior. Evita ejecutar reglas costosas, como consultas a base de datos, sobre datos que ya son inválidos.

## Ejemplo
```js
body('email').isEmail().bail().custom(emailNoExiste)
```
