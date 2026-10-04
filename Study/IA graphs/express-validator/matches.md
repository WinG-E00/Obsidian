---
title: matches
tags: [express-validator, validacion]
---

# `matches()`

## Sintaxis
```js
body('campo').matches(patron, modificadores)
```

## Explicación
Exige que el valor coincida con una expresión regular o con un patrón en forma de texto. Sirve para reglas de formato específicas.

## Ejemplo
```js
body('username').matches(/^[a-z0-9_]{3,20}$/i)
```
