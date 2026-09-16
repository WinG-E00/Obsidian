---
title: trim
tags: [express-validator, sanitizacion]
---

# `trim()`

## Sintaxis
```js
body('campo').trim()
```

## Explicación
Es un sanitizador: elimina los espacios al comienzo y al final del texto antes de que continúe la cadena. Combinalo con `notEmpty()` para que una cadena de espacios no sea válida.

## Ejemplo
```js
body('name').trim().notEmpty()
```
