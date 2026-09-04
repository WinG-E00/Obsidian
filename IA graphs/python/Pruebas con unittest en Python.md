---
title: "Pruebas con unittest en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]]"
  - "[[IA graphs/python/Operadores de comparación en Python|Operadores de comparación en Python]]"
  - "[[IA graphs/python/Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]]"
parts: []
related:
  - "[[IA graphs/python/Proyecto integrador de inventario en Python|Proyecto integrador de inventario en Python]]"
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
contrasts: []
---

# Pruebas con unittest en Python

Forma parte de [[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[IA graphs/python/Definición de funciones en Python|Definición de funciones en Python]] · [[IA graphs/python/Operadores de comparación en Python|Operadores de comparación en Python]] · [[IA graphs/python/Objeto excepción y propagación en Python|Objeto excepción y propagación en Python]].

Una prueba compara el comportamiento de una unidad con un resultado esperado.

La biblioteca estándar ofrece `unittest.TestCase`. Sus métodos `assertEqual(a, b)`, `assertTrue(valor)` y `assertRaises(TipoError)` describen expectativas; los métodos cuyo nombre empieza por `test` son descubiertos como pruebas.

`python -m unittest discover -s tests` busca pruebas en una carpeta. Estas aserciones no son la sentencia [[IA graphs/python/assert en Python|assert]] eliminable con optimización. Conviene verificar resultados, cambios de estado y casos límite importantes, sin depender de detalles internos innecesarios.

El ejemplo ejecuta una prueba en memoria y muestra solo un resultado estable.

## Ejemplo verificable

```python
import io
import unittest

def doble(n):
    return n * 2

class PruebaDoble(unittest.TestCase):
    def test_cero(self):
        self.assertEqual(doble(0), 0)

suite = unittest.defaultTestLoader.loadTestsFromTestCase(PruebaDoble)
resultado = unittest.TextTestRunner(stream=io.StringIO()).run(suite)
print(resultado.testsRun, resultado.wasSuccessful())
```

Salida esperada:

```text
1 True
```

## Recuperación activa

> [!question]
> ¿Qué comportamiento adicional probarías para una función que puede mutar su entrada?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/unittest.html).
