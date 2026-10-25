---
title: Delete sequelize
tags:
  - backend/sequelize
  - crud
---

# Delete sequelize

**D — Delete** reúne las operaciones para eliminar registros. Los ejemplos usan un modelo `Usuario` configurado, y se ejecutan por separado dentro de una función `async`.

```js
import Usuario from './models/Usuario.js';
```

## Usuario.destroy(): eliminar por condición

`where` selecciona los registros. Devuelve la cantidad de filas afectadas; si ninguna coincide, devuelve `0`. [Documentación de destroy](https://sequelize.org/docs/v6/core-concepts/model-querying-basics/#simple-delete-queries)

```js
const cantidad = await Usuario.destroy({
  where: { id: 5 }
});

console.log(cantidad);
```

Un filtro puede coincidir con varias filas: `{ where: { activo: false } }` elimina los usuarios inactivos. `{ where: {} }` alcanza todos los registros disponibles para la operación.

## usuario.destroy(): eliminar una instancia

Si ya consultaste el registro, podés llamar al método sobre esa instancia. El conteo de filas corresponde al método del modelo, no a esta variante. [Documentación de eliminación de instancias](https://sequelize.org/docs/v6/core-concepts/model-instances/#deleting-an-instance)

```js
const usuario = await Usuario.findByPk(5);

if (usuario) {
  await usuario.destroy();
}
```

## truncate(): vaciar una tabla

Elimina todas sus filas y conserva la estructura. No permite seleccionar registros con `where`. Las restricciones por relaciones y el comportamiento del contador de IDs dependen del motor y de las opciones. [Referencia de truncate](https://sequelize.org/api/v6/class/src/model.js~model#static-method-truncate)

```js
await Usuario.truncate();
```

Este ejemplo vacía la tabla completa. Para eliminar un usuario concreto, usá `destroy()` con su condición.

## ¿Qué cambia con paranoid: true?

En un modelo configurado con `paranoid: true`, `destroy()` guarda la fecha en `deletedAt` y oculta el registro de las consultas normales. Este **borrado lógico** conserva la fila. [Documentación de paranoid](https://sequelize.org/docs/v6/core-concepts/paranoid/)

```js
// Borrado lógico si el modelo tiene paranoid: true.
await Usuario.destroy({ where: { id: 5 } });

// Consulta que también puede encontrar registros con borrado lógico.
const usuario = await Usuario.findByPk(5, { paranoid: false });
```

Con `force: true`, `destroy()` elimina físicamente incluso en esos modelos:

```js
await Usuario.destroy({
  where: { id: 5 },
  force: true
});
```

Para recuperar un borrado lógico, usá [[Update sequelize#restore(): recuperar un registro con borrado lógico|restore()]]. `truncate()` vacía físicamente la tabla; no se comporta como el borrado lógico de `destroy()`.

Relacionadas: [[Create sequelize]] · [[Read sequelize]] · [[Update sequelize]].
