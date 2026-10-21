```js
db.usuarios.updateOne(
  { correo: "usuario@email.com" }, // Filtro de búsqueda
  { $set: { estado: "activo", verificado: true } } // Operadores de actualización
)
```