# Ejemplo de descomposición: Python

Este ejemplo demuestra la estructura; no es un temario exhaustivo.

```text
Python (MOC)
├── Fundamentos de Python
│   ├── Sintaxis básica
│   ├── Variables y asignación
│   ├── Tipos de datos
│   │   ├── Boolean
│   │   │   ├── True
│   │   │   └── False
│   │   ├── Integer
│   │   ├── Float
│   │   ├── String
│   │   └── None
│   └── Operadores
├── Estructuras de control
│   ├── Condicional if
│   ├── Bucle for
│   ├── Bucle while
│   └── Control de flujo
├── Funciones
│   ├── Parámetros
│   ├── Argumentos
│   ├── Valor de retorno
│   └── Scope
├── Orientación a objetos
│   ├── Clase
│   ├── Objeto
│   ├── Atributo
│   ├── Método
│   ├── Encapsulación
│   ├── Herencia
│   └── Polimorfismo
└── Objetos incorporados
    ├── list
    ├── dict
    ├── set
    ├── tuple
    └── str
```

## Relaciones cruzadas de ejemplo

- `Condicional if` requiere `Boolean` y se relaciona con `Operadores de comparación`.
- `Bucle for` utiliza `Iterable` e `Iterator`.
- `Método` requiere `Función`, `Clase` y `Objeto`.
- `list.append` pertenece a `list`, recibe un valor, retorna `None` y muta la lista.
- `str.upper` pertenece a `str`, no recibe argumentos obligatorios, retorna otro `str` y no modifica el original.

## Ejemplo de hojas booleanas

### Boolean

Nota compuesta que define el tipo lógico y enlaza `[[True]]` y `[[False]]` como sus dos valores.

### True

Nota atómica: valor booleano que representa una condición verdadera. Debe enlazar hacia `[[Boolean]]`, mostrar un ejemplo observable y contrastar con `[[False]]`.

### False

Nota atómica: valor booleano que representa una condición falsa. Debe enlazar hacia `[[Boolean]]`, mostrar un ejemplo observable y contrastar con `[[True]]`.

## Ejemplo de método con salida

```python
items = ["a"]
result = items.append("b")

print(items)
# salida: ['a', 'b']

print(result)
# salida: None
```

La nota `list.append` debe explicar dos resultados distintos: el efecto observable sobre `items` y el valor de retorno `None`.
