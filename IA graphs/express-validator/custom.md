---
title: custom
tags: [express-validator, validacion]
---

# `custom()`

## Sintaxis
```js
body('campo').custom((value, { req }) => booleanoOPromesa)
```

## Explicación
Agrega una regla propia. La validación pasa si devuelve un valor truthy o una promesa que se resuelve; falla si devuelve falsy, lanza un error o la promesa se rechaza.

## Ejemplo
```js
body('email').custom(async value => {
  if (await emailExiste(value)) throw new Error('El correo ya está registrado');
  return true;
})
```
