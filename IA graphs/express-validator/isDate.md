---
title: isDate
tags: [express-validator, validacion]
---

# `isDate()`

## Sintaxis
```js
body('fecha').isDate({ format, strictMode })
```

## Explicación
Verifica que el texto represente una fecha válida. Indicar un formato y `strictMode: true` evita aceptar formatos ambiguos.

## Ejemplo
```js
body('birthDate').isDate({ format: 'YYYY-MM-DD', strictMode: true })
```
