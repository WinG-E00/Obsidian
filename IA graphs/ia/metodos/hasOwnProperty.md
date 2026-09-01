# hasOwnProperty

Método de [[ia/Object - Métodos]] que **verifica si el objeto tiene una propiedad propia** (no heredada).

```js
const usuario = { nombre: "Ana" };
usuario.hasOwnProperty("nombre"); // true
usuario.hasOwnProperty("toString"); // false
```