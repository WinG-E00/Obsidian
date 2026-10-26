---
title: bcrypt
tags:
  - backend/autenticacion
  - dependencias
---

# bcrypt

## ¿Para qué sirve?

**bcrypt** permite generar un hash de una contraseña y comprobar si una contraseña coincide con un hash guardado. En la base de datos guardás el hash. [Documentación de bcrypt](https://github.com/kelektiv/node.bcrypt.js#readme)

```bash
npm install bcrypt
```

## Crear un helper

```js
import bcrypt from 'bcrypt';

export async function hashearPassword(password) {
  if (typeof password !== 'string' || password.length === 0) {
    throw new Error('La contraseña debe ser un texto no vacío');
  }
  if (Buffer.byteLength(password, 'utf8') > 72) {
    throw new Error('La contraseña supera los 72 bytes');
  }

  return bcrypt.hash(password, 12);
}

export async function compararPassword(password, hashGuardado) {
  return bcrypt.compare(password, hashGuardado);
}
```

| Método | Argumentos | Resultado con `await` |
| --- | --- | --- |
| `hash()` | Contraseña y factor de costo | Hash para guardar |
| `compare()` | Contraseña ingresada y hash guardado | `true` o `false` |
| `genSalt()` | Factor de costo | Salt para usar con `hash()` |

`12` es el costo del ejemplo: aumentarlo incrementa el trabajo de cálculo. Al pasar un número a `hash()`, bcrypt genera el **salt** automáticamente; ese valor aleatorio queda incluido en el resultado. [API](https://github.com/kelektiv/node.bcrypt.js#api)

## Uso en registro y login

```js
// Dentro de un controlador async de registro:
const passwordHash = await hashearPassword(password);
// Guardar passwordHash en el usuario.
```

```js
// Dentro del login, después de encontrar al usuario:
const coincide = await compararPassword(password, usuario.passwordHash);
// Si coincide, podés emitir el token con jsonwebtoken.
```

Adaptá el campo al modelo. Compará con `compare()`: el salt hace que dos hashes de la misma contraseña puedan diferir. Las funciones asíncronas permiten ejecutar este trabajo sin bloquear el hilo principal. [Uso asíncrono](https://github.com/kelektiv/node.bcrypt.js#usage)

> [!note] Límite de bcrypt
> Solo procesa los primeros **72 bytes**, no 72 caracteres. Validá ese límite al registrar y al cambiar contraseñas; el helper lo comprueba antes de generar el hash. [Límite de entrada](https://github.com/kelektiv/node.bcrypt.js#security-issues-and-concerns)

Relacionadas: [[jsonwebtoken]] · [[Create mongoose]] · [[Create sequelize]].
