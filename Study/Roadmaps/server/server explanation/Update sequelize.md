---
title: Update sequelize
tags:
  - backend/sequelize
  - crud
---

# Update sequelize

**U — Update** reúne las operaciones para modificar registros. `Usuario` es el modelo; `usuario` es una instancia que representa un registro. Los ejemplos son independientes y usan `await` dentro de una función `async`.

```js
import Usuario from './models/Usuario.js';
```

## Usuario.update(): actualizar por condición

Recibe los cambios y las opciones con `where`. Devuelve un arreglo cuyo primer elemento es la cantidad de filas afectadas. [Documentación de update](https://sequelize.org/docs/v6/core-concepts/model-querying-basics/#simple-update-queries)

```js
const [cantidad] = await Usuario.update(
  { nombre: 'Lucía' },
  { where: { id: 5 } }
);

console.log(cantidad);
```

El filtro puede coincidir con varias filas. `{ where: {} }` alcanza todas las filas disponibles para esa operación.

## usuario.update(): actualizar una instancia

Si ya obtuviste el usuario, podés modificarlo directamente. Devuelve la instancia actualizada. [Documentación de actualización de instancias](https://sequelize.org/docs/v6/core-concepts/model-instances/#updating-an-instance)

```js
const usuario = await Usuario.findByPk(5);

if (usuario) {
  await usuario.update({ nombre: 'Lucía' });
}
```

## save(): guardar cambios de una instancia

Asignar un campo cambia la instancia en memoria. `save()` persiste los cambios. Si la instancia es nueva, inserta; si ya existe, actualiza. Si no hay cambios, evita una actualización innecesaria. [Documentación de save](https://sequelize.org/docs/v6/core-concepts/model-instances/#change-awareness-of-save)

```js
const usuario = await Usuario.findByPk(5);

if (usuario) {
  usuario.nombre = 'Lucía';
  await usuario.save();
}
```

## set(): preparar cambios en memoria

Permite asignar varios campos y después persistirlos con `save()`. `set()` es síncrono. [Referencia de set](https://sequelize.org/api/v6/class/src/model.js~model#instance-method-set)

```js
const usuario = await Usuario.findByPk(5);

if (usuario) {
  usuario.set({ nombre: 'Lucía', activo: true });
  await usuario.save();
}
```

## increment(): aumentar un valor numérico

Realiza el incremento en la base, sin leer el valor y sumarlo en JavaScript. `by` indica cuánto sumar; el valor predeterminado es `1`. También existe en instancias. [Referencia de increment](https://sequelize.org/api/v6/class/src/model.js~model#static-method-increment)

```js
await Usuario.increment('puntos', {
  by: 10,
  where: { id: 5 }
});
```

## decrement(): disminuir un valor numérico

Es la operación inversa: resta `by` sobre las filas seleccionadas. También existe en instancias. [Referencia de decrement](https://sequelize.org/api/v6/class/src/model.js~model#static-method-decrement)

```js
await Usuario.decrement('puntos', {
  by: 5,
  where: { id: 5 }
});
```

El retorno de los incrementos y decrementos depende del dialecto y de las opciones. Para leer el valor actualizado de una instancia, podés usar `reload()`.

## upsert(): actualizar o crear (U + C)

Cuando necesitás cualquiera de las dos operaciones según exista la clave, usá [[Create sequelize#upsert(): crear o actualizar (C + U)|upsert()]]. Ahí están su ejemplo y su retorno.

## restore(): recuperar un registro con borrado lógico

Disponible en modelos con `paranoid: true`: revierte el borrado lógico. No recupera filas eliminadas físicamente. También existe como `usuario.restore()`. [Documentación de restore](https://sequelize.org/docs/v6/core-concepts/paranoid/#restoring)

```js
await Usuario.restore({ where: { id: 5 } });
```

Relacionadas: [[Create sequelize]] · [[Read sequelize]] · [[Delete sequelize]].
