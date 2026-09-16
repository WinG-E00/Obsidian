
---
title: Métodos de express-validator
tags:
  - nodejs
  - express
  - express-validator
---

# Métodos de express-validator

> [!note]
> Cada enlace contiene la sintaxis, una explicación y un ejemplo. El método correcto es `notEmpty()`; `isNotEmpy` se conserva como texto del enlace por compatibilidad con este apunte.

## Presencia y tipo

- [[notEmpty|isNotEmpy]]
- [[optional]]
- [[isString]]
- [[isArray]]
- [[isObject]]

## Texto y formatos

- [[isEmail]]
- [[isLength]]
- [[matches]]
- [[isURL]]
- [[isUUID]]
- [[isDate]]
- [[isMobilePhone]]
- [[]]

## Números y valores permitidos

- [[isInt]]
- [[isFloat]]
- [[isBoolean]]
- [[isIn]]

## Flujo y validaciones propias

- [[bail]]
- [[custom]]
- [[trim]]
- [[normalizeEmail]]
- [[validationResult]]

## Patrón de uso

```js
import { body, validationResult } from 'express-validator';

app.post(
  '/users',
  body('email').trim().isEmail().withMessage('Correo inválido'),
  (req, res) => {
    const errors = validationResult(req);
    if (!errors.isEmpty()) return res.status(400).json({ errors: errors.array() });
    res.sendStatus(201);
  },
);
```

Fuente: [documentación oficial de ValidationChain](https://express-validator.github.io/docs/api/validation-chain/).
