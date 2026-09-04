---
title: "Operadores de pertenencia en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]]"
prerequisites: []
parts: []
related:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
  - "[[IA graphs/python/set en Python|set en Python]]"
  - "[[IA graphs/python/Iterador en Python|Iterador en Python]]"
  - "[[IA graphs/python/Protocolo de contenedores en Python|Protocolo de contenedores en Python]]"
contrasts: []
---

# Operadores de pertenencia en Python

Forma parte de [[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]].

in y not in consultan si un objeto contiene un elemento o una coincidencia.

En listas y tuplas se buscan elementos; en strings, subcadenas; en diccionarios, claves; en conjuntos, miembros. El mismo símbolo se interpreta según el protocolo del contenedor.

Buscar en un [[IA graphs/python/Iterador en Python|iterador]] puede consumir elementos hasta encontrar una coincidencia o agotarlo. No todas las búsquedas tienen el mismo costo ni permiten reutilizar el recorrido. Una clase puede implementar `__contains__` para definir su criterio.

## Ejemplo verificable

```python
print(2 in [1, 2])
print('yt' in 'Python')
print('a' in {'a': 9})
print(9 in {'a': 9})
```

Salida esperada:

```text
True
True
True
False
```

## Recuperación activa

> [!question]
> ¿Qué parte de un diccionario consulta in?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/expressions.html).
