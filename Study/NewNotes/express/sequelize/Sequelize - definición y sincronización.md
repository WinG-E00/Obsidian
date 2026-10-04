---
title: Sequelize - definición y sincronización
tags:
  - express/sequelize
  - sequelize/configuracion
---

# Definición y sincronización

## Conectar y comprobar la conexión

```js
const sequelize = new Sequelize(process.env.DATABASE_URL);
await sequelize.authenticate();
```

`authenticate()` ejecuta una consulta sencilla para verificar que la conexión funciona. `sequelize.close()` cierra el pool cuando la aplicación termina.

## Definir modelos

```js
const User = sequelize.define('User', {
  name: DataTypes.STRING,
  email: { type: DataTypes.STRING, unique: true }
});
```

También puedes usar `Model.init(attributes, options)` para definir una clase de modelo.

## Sincronizar tablas

```js
await sequelize.sync();
await User.sync();
```

`sync({ alter: true })` ajusta tablas existentes y `sync({ force: true })` las elimina y recrea; evita ambas opciones en producción sin una estrategia de migraciones.

Relacionado: [[Sequelize - asociaciones]] · [[Sequelize - transacciones]]
