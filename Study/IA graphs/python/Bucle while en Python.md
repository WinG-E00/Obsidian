---
title: Bucle while en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[Evaluación booleana en Python|Evaluación booleana en Python]]"
  - "[[Asignación aumentada en Python|Asignación aumentada en Python]]"
parts: []
related:
  - "[[Bucle for en Python|Bucle for en Python]]"
  - "[[break en Python|break en Python]]"
contrasts: []
---

# Bucle while en Python

Forma parte de [[Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[Evaluación booleana en Python|Evaluación booleana en Python]] · [[Asignación aumentada en Python|Asignación aumentada en Python]].

while repite un bloque mientras una condición siga siendo verdadera.

La condición se evalúa antes de cada vuelta, por lo que el bloque puede ejecutarse cero veces. Para que termine, alguna operación debe hacer falsa la condición o ejecutar [[break en Python|break]], retornar o producir una excepción.

[[Bucle for en Python|for]] expresa mejor un recorrido disponible; `while` expresa repetición gobernada por estado. Python no tiene una sentencia `do while`; su comportamiento puede construirse con un bucle y una condición de salida explícita.

## Ejemplo verificable

```python
pendientes = 3
while pendientes > 0:
    print(pendientes)
    pendientes -= 1
```

Salida esperada:

```text
3
2
1
```

## Recuperación activa

> [!question]
> ¿Qué cambio de estado garantiza la terminación del ejemplo?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
