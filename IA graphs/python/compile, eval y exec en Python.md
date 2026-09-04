---
title: "compile, eval y exec en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Fundamentos de Python|Fundamentos de Python]]"
prerequisites:
  - "[[IA graphs/python/Expresiones y sentencias en Python|Expresiones y sentencias en Python]]"
  - "[[IA graphs/python/Compilación y bytecode en Python|Compilación y bytecode en Python]]"
  - "[[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]]"
parts: []
related:
  - "[[IA graphs/python/Serialización con json en Python|Serialización con json en Python]]"
contrasts: []
---

# compile, eval y exec en Python

Forma parte de [[IA graphs/python/Fundamentos de Python|Fundamentos de Python]].

Antes de estudiar: [[IA graphs/python/Expresiones y sentencias en Python|Expresiones y sentencias en Python]] · [[IA graphs/python/Compilación y bytecode en Python|Compilación y bytecode en Python]] · [[IA graphs/python/Ámbitos de nombres en Python|Ámbitos de nombres en Python]].

Python puede compilar o ejecutar código representado como texto u objetos de código.

`compile(fuente, nombre, modo)` produce código; el modo `'eval'` espera una expresión y `'exec'`, sentencias. `eval` devuelve el resultado de una expresión; `exec` ejecuta sentencias y devuelve None. Pueden recibir espacios de nombres explícitos.

Estas operaciones ejecutan código, no solo interpretan datos. Para formatos de intercambio se usa un parser como [[IA graphs/python/Serialización con json en Python|json.loads]]; restringir algunos nombres de eval no debe asumirse como aislamiento seguro. El ejemplo evalúa únicamente una expresión fija escrita aquí.

## Ejemplo verificable

```python
codigo = compile('2 + 3', '<ejemplo>', 'eval')
print(eval(codigo))
espacio = {}
exec('resultado = 7', espacio)
print(espacio['resultado'])
```

Salida esperada:

```text
5
7
```

## Recuperación activa

> [!question]
> ¿Qué tipo de contenido admite el modo eval que lo diferencia de exec?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
