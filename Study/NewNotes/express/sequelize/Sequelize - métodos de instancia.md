---
title: Sequelize - métodos de instancia
tags:
  - express/sequelize
  - sequelize/instancias
---

# Métodos de instancia

Estos métodos se llaman sobre una instancia obtenida o creada, por ejemplo `const user = await User.findByPk(1)`.

```js
user.name = 'Ana María';
await user.save();

await user.update({ active: true });
await user.reload();
await user.destroy();
```

- `save()` persiste los cambios pendientes.
- `update(values)` modifica y guarda los atributos indicados.
- `reload()` vuelve a cargar la instancia desde la base de datos.
- `destroy()` elimina la instancia (o activa el borrado lógico).
- `restore()` recupera una instancia de un modelo `paranoid`.
- `toJSON()` devuelve una representación serializable de la instancia.
- `changed('campo')` indica si un atributo cambió.
- `get({ plain: true })` obtiene los datos sin metadatos de Sequelize.

Relacionado: [[Sequelize - crear y actualizar registros]] · [[Sequelize - eliminar registros]]
