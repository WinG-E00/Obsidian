---
title: Métodos de Sequelize
aliases:
  - Metodos de sequelize
tags:
  - express/sequelize
  - sequelize/metodos
---

# Métodos de Sequelize

Índice rápido de los métodos más utilizados de Sequelize ORM. Cada enlace abre una nota con la firma, el uso y un ejemplo.

> [!note] Convención de ejemplos
> Se asume que `User` es un modelo Sequelize y que `sequelize` es la instancia de conexión.

## Consultas

- [[Sequelize - métodos de consulta|Métodos de consulta]] — [[findAll]], [[findOne]], [[findByPk]], [[findOrCreate]] y [[count]].
- [[Sequelize - operadores y opciones|Operadores y opciones]] — `where`, `Op`, [[../../../OldNotes/include]], `attributes`, `order`, `limit` y `offset`.

## Escritura de datos

- [[Sequelize - crear y actualizar registros|Crear y actualizar registros]] — [[create]], [[bulkCreate]], [[update]] y [[upsert]].
- [[Sequelize - eliminar registros|Eliminar registros]] — [[destroy]], borrado lógico y restauración.
- [[Sequelize - métodos de instancia|Métodos de instancia]] — [[save]], [[update]], [[destroy]], [[reload]] y [[toJSON]].

## Modelos y relaciones

- [[Sequelize - asociaciones|Asociaciones]] — [[hasOne]], [[belongsTo]], [[hasMany]] y [[belongsToMany]].
- [[Sequelize - definición y sincronización|Definición y sincronización]] — [[define]], [[init]], [[sync]], [[authenticate]] y [[close]].

## Control de operaciones

- [[Sequelize - transacciones|Transacciones]] — [[transaction]], [[commit]], [[rollback]] y transacciones administradas.

> [!tip] Orden recomendado
> Empieza por [[Sequelize - métodos de consulta|consultas]], continúa con [[Sequelize - crear y actualizar registros|escritura]] y luego revisa [[Sequelize - asociaciones|asociaciones]] para cargar relaciones con `include`.
