---
title: "Entrada y salida por consola en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[IA graphs/python/str en Python|str en Python]]"
  - "[[IA graphs/python/int en Python|int en Python]]"
parts: []
related:
  - "[[IA graphs/python/Retorno de funciones en Python|Retorno de funciones en Python]]"
  - "[[IA graphs/python/try y except en Python|try y except en Python]]"
contrasts: []
---

# Entrada y salida por consola en Python

Forma parte de [[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[IA graphs/python/str en Python|str en Python]] · [[IA graphs/python/int en Python|int en Python]].

print escribe representaciones de objetos e input lee una línea como texto.

`print(*objetos, sep=' ', end='\n', file=None, flush=False) -> None` combina objetos mediante un separador y terminador. `input(prompt='') -> str` muestra un aviso opcional, lee una línea y quita el salto final; al terminar la entrada puede generar `EOFError`.

Un número escrito por el usuario sigue siendo texto hasta convertirlo, y la conversión puede fallar. Para comprobar ejemplos sin pedir interacción, el siguiente fragmento usa una cadena como dato de entrada. [[IA graphs/python/Retorno de funciones en Python|Retornar]] un valor permite reutilizarlo; imprimirlo solo lo muestra.

## Ejemplo verificable

```python
entrada = '12'
numero = int(entrada)
resultado = print('valor', numero, sep=': ')
print(resultado)
```

Salida esperada:

```text
valor: 12
None
```

## Recuperación activa

> [!question]
> ¿Por qué input no devuelve automáticamente un int si el usuario escribe 12?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/functions.html).
