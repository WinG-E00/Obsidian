---
title: Retorno de funciones en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Funciones en Python|Funciones en Python]]"
prerequisites:
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[None en Python|None en Python]]"
  - "[[tuple en Python|tuple en Python]]"
parts: []
related:
  - "[[Entrada y salida por consola en Python|Entrada y salida por consola en Python]]"
  - "[[finally en Python|finally en Python]]"
  - "[[Generadores en Python|Generadores en Python]]"
contrasts: []
---

# Retorno de funciones en Python

Forma parte de [[Funciones en Python|Funciones en Python]].

Antes de estudiar: [[Definición de funciones en Python|Definición de funciones en Python]] · [[None en Python|None en Python]] · [[tuple en Python|tuple en Python]].

return termina una llamada de función y entrega un objeto al código que la invocó.

`return expresion` evalúa la expresión y entrega su resultado. `return` sin expresión y llegar al final del cuerpo devuelven [[None en Python|None]]. Se puede devolver una tupla para agrupar varios datos.

Imprimir no equivale a retornar: `print` produce salida visible, pero su retorno es `None`. Un `finally` pendiente se ejecuta antes de completar el retorno. En [[Generadores en Python|generadores]], `return` finaliza la producción y tiene otra relación con el consumidor.

## Ejemplo verificable

```python
def dividir(a, b):
    return a // b, a % b

cociente, resto = dividir(7, 3)
print(cociente, resto)
```

Salida esperada:

```text
2 1
```

## Recuperación activa

> [!question]
> ¿Qué objeto devuelve return a, b?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
