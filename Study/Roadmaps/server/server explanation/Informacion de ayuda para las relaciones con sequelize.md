---
title: Informacion de ayuda para las relaciones con sequelize
tags:
  - sequelize
  - bases-de-datos
---

# Información de ayuda para las relaciones con Sequelize

Ejemplos para Sequelize v6. Nota relacionada: [[creacion modelo sequelize]].

## ¿Por qué definir los identificadores de las relaciones dentro del modelo?

Porque una relación necesita columnas donde guardar las referencias. Esas columnas se llaman **claves foráneas**.

Por ejemplo, si un usuario tiene muchas publicaciones, cada publicación guarda un `usuarioId` que indica a quién pertenece.

| Campo de Publicacion | Función |
| --- | --- |
| `id` | Identifica a la propia publicación: es su clave primaria. |
| `usuarioId` | Identifica al usuario asociado: es una clave foránea. |

```text
Usuario                 Publicacion
id | nombre             id | titulo       | usuarioId
1  | Ana                10 | JavaScript   | 1
                        11 | Node.js      | 1
```

Las dos publicaciones pertenecen a Ana porque guardan su identificador.

## Definición explícita de la clave foránea

Suponiendo que `sequelize`, `DataTypes` y el modelo `Usuario` ya están definidos:

```js
const Publicacion = sequelize.define('Publicacion', {
  id: {
    type: DataTypes.INTEGER,
    primaryKey: true,
    autoIncrement: true,
  },

  titulo: {
    type: DataTypes.STRING,
    allowNull: false,
  },

  usuarioId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: {
      model: Usuario,
      key: 'id',
    },
  },
});

Usuario.hasMany(Publicacion, { foreignKey: 'usuarioId' });
Publicacion.belongsTo(Usuario, { foreignKey: 'usuarioId' });
```

Cada opción tiene una función:

- `type`: debe ser compatible con el tipo de la clave referenciada. Si `Usuario.id` es UUID, la referencia también debe usar un tipo compatible.
- `allowNull: false`: la publicación debe tener un usuario asignado.
- `references.model`: indica el modelo referenciado. También puede indicarse el nombre de la tabla; en ese caso debe coincidir con el nombre real en la base.
- `references.key`: indica la columna referenciada, aquí `id`.
- `foreignKey`: indica a la asociación qué atributo debe utilizar, aquí `usuarioId`.

> [!important] La clave foránea no genera un identificador nuevo
> `usuarioId` no lleva `autoIncrement`. Guarda el identificador de un usuario existente. El `id` de la publicación sí puede generarse automáticamente.

## ¿Es obligatorio escribir la clave dentro del modelo?

No siempre. Sequelize puede agregar el atributo al declarar la asociación si todavía no existe:

```js
Publicacion.belongsTo(Usuario, { foreignKey: 'usuarioId' });
```

Escribirlo explícitamente permite ver la estructura completa del modelo y controlar el tipo de dato, la obligatoriedad y las restricciones. En un examen también permite demostrar dónde se guarda la relación y a qué columna apunta.

Si el atributo ya existe, Sequelize lo utiliza. Para compartir una sola columna, el nombre debe coincidir en el modelo y en ambas asociaciones.

## Diferencia entre references y las asociaciones

**`references` describe una restricción para la base de datos:** el valor de la clave foránea debe apuntar a un registro válido, salvo que se permita `null` y el valor sea nulo.

**`belongsTo`, `hasMany`, `hasOne` y `belongsToMany` describen asociaciones para Sequelize:** permiten consultar con `include` y utilizar métodos de instancia para acceder a los registros relacionados.

Por ejemplo, con las asociaciones anteriores:

```js
const publicaciones = await Publicacion.findAll({
  include: Usuario,
});

const publicacion = await Publicacion.findByPk(1);

if (publicacion) {
  const usuario = await publicacion.getUsuario();
}
```

Definir solamente `references` no crea estos métodos de asociación.

## Crear un registro relacionado

```js
await Publicacion.create({
  titulo: 'Aprendiendo Sequelize',
  usuarioId: 3,
});
```

Esto crea una publicación asociada al usuario 3. Si la restricción de clave foránea está aplicada y activa en la base, la inserción falla cuando ese usuario no existe.

## Dónde va la clave en cada relación

| Relación | Asociaciones habituales | Ubicación de la clave foránea |
| --- | --- | --- |
| Uno a uno | `Usuario.hasOne(Perfil)` y `Perfil.belongsTo(Usuario)` | En `Perfil`, por ejemplo `usuarioId`. |
| Uno a muchos | `Usuario.hasMany(Publicacion)` y `Publicacion.belongsTo(Usuario)` | En el lado «muchos»: `Publicacion.usuarioId`. |
| Muchos a muchos | Dos llamadas a `belongsToMany` | En una tabla intermedia con las dos claves. |

Reglas para recordar:

- `A.belongsTo(B)`: la clave está en **A**.
- `A.hasOne(B)` o `A.hasMany(B)`: la clave está en **B**.
- `A.belongsToMany(B)`: las claves están en la tabla indicada por `through`.

## Uno a uno necesita unicidad

Una clave foránea por sí sola permite repetir el mismo usuario en varias filas. Para garantizar que un usuario tenga como máximo un perfil, la columna `Perfil.usuarioId` debe tener una restricción `UNIQUE`:

```js
usuarioId: {
  type: DataTypes.INTEGER,
  allowNull: false,
  unique: true,
  references: {
    model: Usuario,
    key: 'id',
  },
}
```

Esto garantiza que cada perfil tenga un usuario y que un usuario no aparezca en varios perfiles. No obliga a que todo usuario tenga un perfil.

## Qué ocurre al borrar o actualizar el registro referenciado

Las opciones `onDelete` y `onUpdate` controlan esas acciones. Por ejemplo:

```js
Publicacion.belongsTo(Usuario, {
  foreignKey: 'usuarioId',
  onDelete: 'RESTRICT',
  onUpdate: 'CASCADE',
});
```

| Opción | Efecto al usarla en onDelete |
| --- | --- |
| `RESTRICT` | Impide borrar al usuario mientras tenga publicaciones relacionadas. |
| `CASCADE` | Al borrar al usuario, también borra sus publicaciones relacionadas. |
| `SET NULL` | Conserva las publicaciones y deja `usuarioId` en `null`; requiere permitir valores nulos. |

`onUpdate: 'CASCADE'` propaga un cambio de la clave referenciada a las claves foráneas que la usan.

## El modelo y la tabla deben coincidir

Definir un atributo o una asociación en JavaScript no modifica por sí solo una tabla que ya existe. Las columnas y restricciones deben aplicarse en la base mediante migraciones o la sincronización correspondiente.

> [!tip] Para el examen
> Identificá primero quién guarda la referencia. Después definí su tipo, si admite `null`, a qué tabla y columna apunta, y las asociaciones que utilizan esa misma clave.

## Referencias

- [Asociaciones de Sequelize v6](https://sequelize.org/docs/v6/core-concepts/assocs/)
- [Personalización de claves foráneas](https://sequelize.org/docs/v6/core-concepts/assocs/#customizing-the-foreign-key)
- [Opciones onDelete y onUpdate](https://sequelize.org/docs/v6/core-concepts/assocs/#ondelete-and-onupdate)
