---
title: "Evaluación booleana en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[IA graphs/python/bool en Python|bool en Python]]"
parts: []
related:
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
  - "[[IA graphs/python/Operadores lógicos y cortocircuito en Python|Operadores lógicos y cortocircuito en Python]]"
contrasts: []
---

# Evaluación booleana en Python

Forma parte de [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[IA graphs/python/bool en Python|bool en Python]].

Python permite usar objetos de muchos tipos como condiciones.

Son falsos `None`, `False`, los ceros numéricos y los contenedores vacíos incorporados. En otros objetos se consulta `__bool__()` o, si no existe, `__len__()`; sin ambos se consideran verdaderos.

Esto no convierte permanentemente al objeto en un booleano. [[IA graphs/python/Condicional if en Python|if]] decide una rama; [[IA graphs/python/Operadores lógicos y cortocircuito en Python|and y or]] pueden devolver uno de los objetos originales. Si querés distinguir un dato ausente de un contenedor vacío, usá [[IA graphs/python/None en Python|is None]].

## Ejemplo verificable

```python
print(bool([]), bool([0]))
print(bool(''), bool('0'))
```

Salida esperada:

```text
False True
False True
```

## Recuperación activa

> [!question]
> ¿Por qué [0] es verdadero aunque su único elemento sea falso?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
