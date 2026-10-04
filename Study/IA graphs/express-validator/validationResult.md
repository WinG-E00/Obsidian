---
title: validationResult
tags: [express-validator, resultados]
---

# `validationResult()`

## Sintaxis
```js
const result = validationResult(req)
```

## Explicación
Recupera los errores acumulados por las cadenas de validación de la solicitud. Usá `result.isEmpty()` para saber si hubo fallos y `result.array()` para enviarlos al cliente.

## Ejemplo
```js
const errors = validationResult(req);
if (!errors.isEmpty()) {
  return res.status(400).json({ errors: errors.array() });
}
```
