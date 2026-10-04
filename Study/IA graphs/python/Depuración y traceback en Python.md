---
title: Depuración y traceback en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[Pruebas con unittest en Python|Pruebas con unittest en Python]]"
  - "[[Introspección en Python|Introspección en Python]]"
contrasts: []
---

# Depuración y traceback en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]] · [[Definición de funciones en Python|Definición de funciones en Python]].

Depurar consiste en observar estado y flujo para localizar la causa de un resultado inesperado.

Un traceback muestra las llamadas atravesadas por una excepción; el tipo y mensaje final orientan el fallo, pero la causa puede estar en datos generados antes. `breakpoint()` abre normalmente pdb, aunque el entorno puede configurar otro comportamiento.

En pdb, `n` avanza sin entrar en la siguiente llamada, `s` entra, `c` continúa, `p expresion` inspecciona y `bt` muestra la pila. Inspeccionar una expresión puede ejecutar código, como una property. El ejemplo muestra el tipo de fallo sin iniciar una sesión interactiva.

## Ejemplo verificable

```python
def obtener(datos):
    return datos['clave']

try:
    obtener({})
except KeyError as error:
    print(type(error).__name__, error.args[0])
```

Salida esperada:

```text
KeyError clave
```

## Recuperación activa

> [!question]
> ¿Por qué la última línea que falla no siempre es donde se originó el dato incorrecto?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/pdb.html).
