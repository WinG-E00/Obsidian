# create

Método de [[ia/Object - Métodos]] que **crea un objeto nuevo** usando un objeto dado como prototipo.

```js
const persona = { saludar() { return "Hola"; } };
const ana = Object.create(persona);
ana.saludar(); // "Hola"
```