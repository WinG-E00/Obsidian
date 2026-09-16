---
title: isMobilePhone
tags: [express-validator, validacion]
---

# `isMobilePhone()`

## Sintaxis
```js
body('telefono').isMobilePhone(locale)
```

## Explicación
Comprueba que el valor tenga formato de teléfono móvil para una región. Usa `'any'` cuando no se conoce el país, o un locale específico para una regla más estricta.

## Ejemplo
```js
body('phone').isMobilePhone('es-AR')
```
