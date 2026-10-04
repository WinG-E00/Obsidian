---
title: isIn
tags: [express-validator, validacion]
---

# `isIn()`

## Sintaxis
```js
body('campo').isIn(valores)
```

## Explicación
Acepta el valor solo si aparece en la lista indicada. Es apropiado para roles, estados y opciones cerradas.

## Ejemplo
```js
body('role').isIn(['user', 'admin'])
```
