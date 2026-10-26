---
title: Tipos de datos y opciones de Sequelize
tags:
  - backend/sequelize
  - modelos
---

# Tipos de datos y opciones de Sequelize

Al crear un modelo configurás **qué guarda cada campo** y **qué reglas debe cumplir**. Los ejemplos usan **Sequelize 6**. Para ver el archivo completo, seguí en [[creacion modelo sequelize]].

```js
import { DataTypes } from 'sequelize';

// Ejemplo de un campo dentro del objeto de atributos:
const campos = {
  nombre: {
    type: DataTypes.STRING(100),
    allowNull: false
  }
};
```

`nombre` es el atributo; `type` indica el tipo; las demás propiedades lo configuran. [Referencia de DataTypes](https://sequelize.org/api/v6/variable/index.html#static-variable-DataTypes)

## Tipos de datos comunes

| Tipo | Qué guarda | Ejemplo de uso |
| --- | --- | --- |
| `DataTypes.STRING(100)` | Texto de hasta 100 caracteres según el dialecto | Nombre |
| `DataTypes.TEXT` | Texto largo | Descripción |
| `DataTypes.INTEGER` | Enteros | Cantidad |
| `DataTypes.BIGINT` | Enteros de mayor rango | Identificador grande |
| `DataTypes.FLOAT` / `DataTypes.DOUBLE` | Números con decimales aproximados | Medición |
| `DataTypes.DECIMAL(10, 2)` | Decimal con 10 dígitos totales y 2 decimales | Precio |
| `DataTypes.BOOLEAN` | Verdadero o falso | Activo |
| `DataTypes.DATE` | Fecha y hora | Momento de registro |
| `DataTypes.DATEONLY` | Fecha sin hora | Nacimiento |
| `DataTypes.UUID` | Identificador UUID | ID público |

`STRING` sin longitud usa 255 por defecto. La representación SQL y el soporte dependen de la base de datos. [Tipos básicos](https://sequelize.org/docs/v6/core-concepts/model-basics/#data-types)

## Tipos para casos específicos

| Tipo | Para qué sirve | Disponibilidad relevante en v6 |
| --- | --- | --- |
| `DataTypes.ENUM('pendiente', 'pagado')` | Lista cerrada de valores | Verificar soporte del dialecto |
| `DataTypes.JSON` | Objetos o arreglos JSON | Depende del dialecto |
| `DataTypes.JSONB` | JSON binario consultable | PostgreSQL |
| `DataTypes.ARRAY(DataTypes.STRING)` | Arreglo de textos | PostgreSQL |
| `DataTypes.BLOB` | Datos binarios | Se recuperan como `Buffer` |
| `DataTypes.VIRTUAL` | Atributo calculado sin columna SQL | Lo calcula el modelo |

[Tipos especiales](https://sequelize.org/docs/v6/other-topics/other-data-types/) · [BLOB y DataTypes](https://sequelize.org/api/v6/variable/index.html#static-variable-DataTypes) · [Atributos virtuales](https://sequelize.org/docs/v6/core-concepts/getters-setters-virtuals/#virtual-fields)

## Opciones de cada campo

Estas propiedades van **dentro de la definición de una columna**, junto a `type`:

| Propiedad | Para qué sirve | Ejemplo |
| --- | --- | --- |
| `type` | Tipo del dato | `DataTypes.STRING(100)` |
| `allowNull` | Permite o prohíbe `null`; por defecto permite | `false` |
| `defaultValue` | Valor inicial si no enviás el campo | `true` |
| `primaryKey` | Declara una clave primaria | `true` |
| `autoIncrement` | Genera un entero incremental | `true` |
| `unique` | Agrega una restricción de unicidad | `true` |
| `validate` | Validaciones del atributo | `{ isEmail: true }` |
| `field` | Nombre SQL distinto del atributo JS | `'nombre_completo'` |
| `references` | Tabla y columna referenciadas | `{ model: 'roles', key: 'id' }` |
| `onDelete` / `onUpdate` | Acción sobre la clave foránea | `'RESTRICT'` / `'CASCADE'` |
| `comment` | Comentario SQL, según dialecto | `'Email del usuario'` |
| `get()` / `set(valor)` | Personalizan lectura o asignación | Ver ejemplo siguiente |

[Opciones de atributos](https://sequelize.org/api/v6/class/src/model.js~model#static-method-init)

### Validaciones: formato y contenido

```js
const campos = {
  email: {
    type: DataTypes.STRING(255),
    allowNull: false,
    unique: true,
    validate: { isEmail: true }
  },
  edad: {
    type: DataTypes.INTEGER,
    validate: { isInt: true, min: 0, max: 120 }
  },
  nombre: {
    type: DataTypes.STRING(100),
    allowNull: false,
    validate: { notEmpty: true, len: [2, 100] }
  }
};
```

`validate` comprueba valores en Sequelize antes de guardarlos. `unique` se apoya en una restricción SQL. `allowNull: false` valida en Sequelize y produce `NOT NULL` al crear la columna; **no rechaza por sí solo un texto vacío**. Las restricciones deben existir también en la tabla: editar el modelo no modifica automáticamente una tabla existente. [Validaciones y restricciones](https://sequelize.org/docs/v6/core-concepts/validations-and-constraints/)

### Valores predeterminados

```js
const campos = {
  activo: {
    type: DataTypes.BOOLEAN,
    defaultValue: true
  },
  fechaAlta: {
    type: DataTypes.DATE,
    defaultValue: DataTypes.NOW
  },
  codigo: {
    type: DataTypes.UUID,
    defaultValue: DataTypes.UUIDV4
  }
};
```

`NOW` y `UUIDV4` se usan acá como valores predeterminados; el tipo lo establece `type`. [Valores predeterminados y UUID](https://sequelize.org/docs/v6/core-concepts/model-basics/)

### Clave foránea

```js
const campos = {
  rolId: {
    type: DataTypes.INTEGER,
    allowNull: false,
    references: { model: 'roles', key: 'id' },
    onDelete: 'RESTRICT',
    onUpdate: 'CASCADE'
  }
};
```

Requiere una tabla `roles` con una clave compatible. `RESTRICT` impide borrar un rol referenciado; `CASCADE` propaga cambios de su clave. `SET NULL` requiere permitir nulos y el soporte de acciones depende del motor. Para usar métodos de relación y cargar modelos con `include`, definí además asociaciones como `belongsTo()` y `hasMany()`. [Claves foráneas y asociaciones](https://sequelize.org/docs/v6/core-concepts/assocs/)

### Setter: transformar un valor al asignarlo

```js
const campos = {
  nombre: {
    type: DataTypes.STRING,
    set(valor) {
      this.setDataValue('nombre', valor.trim());
    }
  }
};
```

Este ejemplo espera un texto y elimina espacios de sus extremos. Usá `setDataValue()` dentro del setter: asignar `this.nombre` volvería a llamarlo. Un `get()` permite personalizar el valor al leerlo usando `getDataValue()`. [Getters y setters](https://sequelize.org/docs/v6/core-concepts/getters-setters-virtuals/)

## Opciones generales del modelo

Van en el **tercer argumento de `define()`**, fuera de los campos:

```js
const Usuario = sequelize.define('Usuario', campos, {
  tableName: 'usuarios',
  timestamps: true,
  underscored: true
});
```

| Opción | Para qué sirve |
| --- | --- |
| `tableName: 'usuarios'` | Fija el nombre de tabla |
| `freezeTableName: true` | Evita pluralizar el nombre cuando no fijaste `tableName` |
| `timestamps: true` | Agrega y administra `createdAt` y `updatedAt`; está activo por defecto |
| `createdAt` / `updatedAt` | Renombran las fechas o desactivan una con `false` |
| `underscored: true` | Mapea nombres SQL a `snake_case`; conserva los atributos JS |
| `paranoid: true` | Activa borrado lógico mediante `deletedAt`; requiere `timestamps` |
| `indexes` | Declara índices, incluso compuestos |
| `hooks` | Funciones para eventos como `beforeCreate` |
| `validate` | Validaciones que pueden comparar varios campos |

[Nombres y underscored](https://sequelize.org/docs/v6/other-topics/naming-strategies/) · [Timestamps](https://sequelize.org/docs/v6/core-concepts/model-basics/#timestamps) · [Borrado lógico](https://sequelize.org/docs/v6/core-concepts/paranoid/) · [Opciones de modelo](https://sequelize.org/api/v6/class/src/model.js~model#static-method-init)

Por ejemplo, un índice único compuesto impide repetir la **combinación** de dos campos:

```js
// Dentro de las opciones generales; ambos campos deben existir.
indexes: [
  { unique: true, fields: ['usuarioId', 'cursoId'] }
]
```

Un usuario puede aparecer en varios cursos, pero no dos veces en el mismo curso. Los índices se crean al sincronizar o mediante migraciones; declararlos no cambia por sí solo la tabla. [Índices](https://sequelize.org/docs/v6/other-topics/indexes/)

Relacionadas: [[creacion modelo sequelize]] · [[sincronizacion de modelos con sequelize]] · [[Create sequelize]].
