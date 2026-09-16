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

## Consultar Sequelize dentro de `custom()`

Los métodos de Sequelize devuelven promesas, por lo que el callback de `custom()` puede declararse como `async` y usar `await`. Si encontrás una condición inválida, lanzá `new Error('mensaje')`; express-validator incorporará ese mensaje al resultado de validación.

Primero importá el validador y los modelos que vas a consultar:

```js
import { body } from 'express-validator';
import { User, Role } from '../models/index.js';
```

### Evitar un correo duplicado con `findOne()`

`findOne({ where: ... })` busca el primer registro que coincida y devuelve la instancia o `null`. Es ideal para verificar que un campo único todavía no exista.

```js
body('email').custom(async value => {
  const user = await User.findOne({ where: { email: value } });

  if (user) {
    throw new Error('El correo ya está registrado');
  }

  return true;
})
```

En una ruta, conviene normalizar y verificar el formato antes de consultar la base de datos. `bail()` evita la consulta si el correo no tiene un formato válido:

```js
body('email')
  .trim()
  .isEmail().withMessage('Ingresá un correo válido')
  .bail()
  .normalizeEmail()
  .custom(async email => {
    const existingUser = await User.findOne({ where: { email } });
    if (existingUser) throw new Error('El correo ya está registrado');
  })
```

### Verificar una relación con `findByPk()`

`findByPk(id)` busca un único registro por su clave primaria. Usalo, por ejemplo, para exigir que el `roleId` enviado corresponda a un rol existente.

```js
body('roleId')
  .isInt({ min: 1 })
  .bail()
  .custom(async roleId => {
    const role = await Role.findByPk(roleId);
    if (!role) throw new Error('El rol indicado no existe');
  })
```

### Validar en una actualización

Al editar un usuario, excluí al propio usuario de la búsqueda; si no, su correo actual parecería duplicado. `req.params` está disponible como segundo argumento del callback.

```js
import { Op } from 'sequelize';

body('email').isEmail().bail().custom(async (email, { req }) => {
  const existingUser = await User.findOne({
    where: {
      email,
      id: { [Op.ne]: req.params.id },
    },
  });

  if (existingUser) throw new Error('Ese correo pertenece a otro usuario');
})
```

> [!warning] La validación no reemplaza una restricción de base de datos
> `findOne()` ayuda a dar un mensaje claro, pero dos solicitudes simultáneas pueden pasar la comprobación antes de crear el registro. Definí también una restricción `UNIQUE` sobre `email` en el modelo o la migración y manejá su posible error al guardar.

## Regla práctica

- Usá `findOne({ where: { campo: value } })` para saber si ya existe un valor.
- Usá `findByPk(value)` para comprobar que exista un registro identificado por su id.
- Usá `count({ where: ... })` cuando solo necesitás la cantidad y no los datos del registro.
- No hagas `create`, `update` ni `destroy` dentro de `custom()`: este middleware debe validar; la escritura debe permanecer en el controlador o servicio.

Fuentes: [finders de Sequelize](https://sequelize.org/docs/v6/core-concepts/model-querying-finders/) y [validaciones y restricciones](https://sequelize.org/docs/v6/core-concepts/validations-and-constraints/).
