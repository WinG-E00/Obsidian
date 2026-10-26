---
title: jsonwebtoken
tags:
  - backend/autenticacion
  - dependencias
---

# jsonwebtoken

## ¿Para qué sirve?

La librería **jsonwebtoken** crea y verifica tokens JWT. Un token firmado puede transportar el identificador de un usuario y una fecha de vencimiento. El servidor lo emite después de comprobar las credenciales. [Introducción a JWT](https://www.jwt.io/introduction)

```bash
npm install jsonwebtoken
```

## Crear un token con sign()

Ejemplo de un helper con módulos ES. Configurá primero `JWT_SECRET` mediante [[dotenv]]:

```js
import 'dotenv/config';
import jwt from 'jsonwebtoken';

const secret = process.env.JWT_SECRET;
if (!secret) throw new Error('Falta JWT_SECRET');

export function crearToken(usuarioId) {
  return jwt.sign(
    { sub: String(usuarioId) },
    secret,
    { algorithm: 'HS256', expiresIn: '1h' }
  );
}

export function verificarToken(token) {
  return jwt.verify(token, secret, { algorithms: ['HS256'] });
}
```

| Elemento | Significado |
| --- | --- |
| Primer argumento de `sign()` | Payload: los datos del token |
| `sub` | Identificador del sujeto, acá el usuario |
| `secret` | Clave secreta compartida por quien firma y verifica en este ejemplo HMAC |
| `expiresIn: '1h'` | Vence en una hora |
| `algorithm` | Algoritmo usado al firmar |
| `algorithms` | Algoritmos aceptados al verificar |

`expiresIn: 3600` también indica una hora; usá unidades en valores de texto. [API de jsonwebtoken](https://github.com/auth0/node-jsonwebtoken#readme)

## Verificar un token con verify()

El cliente puede enviarlo en una petición:

```http
Authorization: Bearer <token>
```

Extraé el token y pasalo a `verificarToken()`. `verify()` devuelve el payload comprobado o lanza un error si la firma o el token son inválidos, o está vencido. Capturá ese error en el middleware para responder `401` y validá los campos que tu aplicación necesita. [Verificación](https://github.com/auth0/node-jsonwebtoken#jwtverifytoken-secretorpublickey-options-callback)

`decode()` solamente lee el contenido; no verifica su autenticidad. [Decode](https://github.com/auth0/node-jsonwebtoken#jwtdecodetoken--options)

## ¿Qué contiene un JWT firmado?

Tiene tres partes: `header.payload.signature`. El payload se puede leer: incluí datos mínimos, como el ID, y mantené las contraseñas fuera del token. La firma permite comprobar su integridad. [Estructura de JWT](https://www.jwt.io/introduction)

## Lugar en el login

1. Buscás al usuario por email.
2. Comprobás la contraseña con [[bcrypt]].
3. Si coincide, creás el JWT y lo devolvés al cliente.
4. En futuras peticiones, el servidor verifica el JWT antes de permitir acceso.

Podés transportarlo en un encabezado o mediante una cookie; si usás cookies, consultá [[cookie-parser]].
