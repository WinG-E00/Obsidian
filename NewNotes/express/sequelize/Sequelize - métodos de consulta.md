---
title: Sequelize - métodos de consulta
tags:
  - express/sequelize
  - sequelize/consultas
---

# Métodos de consulta

## `findAll`

Devuelve un arreglo con todos los registros que cumplen `where`.

```js
const users = await User.findAll({
  where: { active: true },
  order: [['createdAt', 'DESC']],
  limit: 20
});
```

## `findOne`

Devuelve el primer registro que coincide o `null` si no existe.

```js
const user = await User.findOne({ where: { email: 'ana@example.com' } });
```

## `findByPk`

Busca un registro por su clave primaria.

```js
const user = await User.findByPk(12);
```

## `findOrCreate`

Busca con `where` y crea el registro usando `defaults` si no existe. Devuelve `[instancia, creado]`.

```js
const [user, created] = await User.findOrCreate({
  where: { email: 'ana@example.com' },
  defaults: { name: 'Ana' }
});
```

## Contar registros

```js
const total = await User.count({ where: { active: true } });
```

Relacionado: [[Sequelize - operadores y opciones]] · [[Metodos de sequelize]]
