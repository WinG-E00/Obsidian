---
title: "Coincidencia de patrones con match en Python"
type: concept
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[IA graphs/python/Condicional if en Python|Condicional if en Python]]"
  - "[[IA graphs/python/dict en Python|dict en Python]]"
parts:
  - "[[IA graphs/python/Patrones de descomposición en Python|Patrones de descomposición en Python]]"
related:
  - "[[IA graphs/python/Patrones de descomposición en Python|Patrones de descomposición en Python]]"
contrasts: []
---

# Coincidencia de patrones con match en Python

Forma parte de [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[IA graphs/python/Condicional if en Python|Condicional if en Python]] · [[IA graphs/python/dict en Python|dict en Python]].

match selecciona una rama comprobando la estructura de un valor.

Disponible desde 3.10. Cada `case` contiene un patrón; puede comparar literales, capturar nombres, descomponer secuencias o mapeos y reconocer clases. La primera coincidencia cuya guarda sea verdadera ejecuta su bloque, sin caída automática a otros casos.

Un nombre suelto captura, no compara con una variable previa. `_` es el comodín sin vinculación. Para comparar una constante nombrada se suele usar un nombre calificado como `Estado.ACTIVO`. `|` ofrece alternativas compatibles en sus capturas y `as` conserva el objeto completo. La [[IA graphs/python/Patrones de descomposición en Python|descomposición por patrones]] tiene reglas diferentes de una igualdad.

## Partes del concepto

- [[IA graphs/python/Patrones de descomposición en Python|Patrones de descomposición en Python]] — Un patrón puede extraer partes de un valor si este tiene la estructura requerida.

## Ejemplo verificable

```python
dato = {'tipo': 'punto', 'x': 2, 'y': 3}
match dato:
    case {'tipo': 'punto', 'x': x, 'y': y} if x >= 0:
        print(x + y)
    case _:
        print('otro')
```

Salida esperada:

```text
5
```

## Recuperación activa

> [!question]
> ¿Por qué case nombre captura en vez de comparar con una variable previa?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/compound_stmts.html).
