---
title: Read sequelize
tags:
  - backend/sequelize
  - crud
---

# Read sequelize

**R — Read** reúne las consultas. Usamos un modelo `Usuario` ya configurado. Cada bloque es independiente y se ejecuta dentro de una función `async`. Por defecto, las búsquedas devuelven instancias con datos y métodos. [Documentación de búsquedas](https://sequelize.org/docs/v6/core-concepts/model-querying-finders/)

```js
import Usuario from './models/Usuario.js';
```

## findAll(): obtener varios registros

Devuelve un arreglo; si no encuentra coincidencias, devuelve `[]`.

```js
const usuarios = await Usuario.findAll({
  where: { activo: true },
  attributes: ['id', 'nombre'],
  order: [['id', 'ASC']],
  limit: 10,
  offset: 0
});
```

`where` filtra, `attributes` selecciona columnas, `order` ordena, `limit` limita la cantidad y `offset` salta registros. Sin opciones, `Usuario.findAll()` consulta todos los registros visibles para el modelo. [Opciones de consulta](https://sequelize.org/docs/v6/core-concepts/model-querying-basics/)

## findOne(): obtener una coincidencia

Devuelve una instancia o `null`. Con `order` indicás cuál priorizar cuando varios registros coinciden.

```js
const usuario = await Usuario.findOne({
  where: { nombre: 'Ana' },
  order: [['id', 'ASC']]
});
```

## findByPk(): buscar por clave primaria

Recibe directamente la clave primaria, normalmente `id`. Devuelve una instancia o `null`.

```js
const usuario = await Usuario.findByPk(5);
```

## count(): contar registros

Obtiene la cantidad sin traer todos los registros. En este ejemplo devuelve un número. [Referencia de count](https://sequelize.org/api/v6/class/src/model.js~model#static-method-count)

```js
const total = await Usuario.count({
  where: { activo: true }
});
```

## findAndCountAll(): consultar y contar

Útil para paginar: devuelve `{ rows, count }`. Sin `group`, `count` es el total que coincide con el filtro, antes de aplicar la paginación. Con `group`, el conteo se devuelve por grupos. [Documentación de findAndCountAll](https://sequelize.org/docs/v6/core-concepts/model-querying-finders/#findandcountall)

```js
const { rows, count } = await Usuario.findAndCountAll({
  where: { activo: true },
  order: [['id', 'ASC']],
  limit: 10,
  offset: 10
});

// rows: segunda página, hasta 10 usuarios.
// count: total de usuarios activos.
```

## max(), min() y sum(): consultar valores calculados

Obtienen el máximo, el mínimo y la suma de una columna. También aceptan filtros en sus opciones. [Documentación de agregaciones](https://sequelize.org/docs/v6/core-concepts/model-querying-basics/#utility-methods)

```js
const edadMayor = await Usuario.max('edad');
const edadMenor = await Usuario.min('edad');
const sumaEdades = await Usuario.sum('edad');
```

## reload(): volver a leer una instancia

Refresca sus datos desde la base. Sirve si pudieron cambiar después de la consulta inicial. [Documentación de reload](https://sequelize.org/docs/v6/core-concepts/model-instances/#reloading-an-instance)

```js
const usuario = await Usuario.findByPk(5);

if (usuario) {
  await usuario.reload();
}
```

## Ejemplo dentro de un controlador

El controlador recibe `req` y `res`; el modelo hace la consulta. `req.params.id` viene de una ruta como `/usuarios/:id`.

```js
export const obtenerUsuario = async (req, res, next) => {
  try {
    const usuario = await Usuario.findByPk(req.params.id);

    if (!usuario) {
      return res.status(404).json({ mensaje: 'Usuario no encontrado' });
    }

    return res.json(usuario);
  } catch (error) {
    next(error);
  }
};
```

Relacionadas: [[Create sequelize]] · [[Update sequelize]] · [[Delete sequelize]]. Para buscar y crear cuando no existe: [[Create sequelize#findOrCreate(): buscar o crear (R + C)]].
