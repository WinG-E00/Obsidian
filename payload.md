es el conjunto de datos que se guardan dentro de el token

```js

const token = jwt.sign(
  { id: usuario._id, rol: usuario.rol }, // payload
  process.env.JWT_SECRET,              // clave para firmar
  { expiresIn: "1h" }                  // opciones
);

```