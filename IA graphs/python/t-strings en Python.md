---
title: "t-strings en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/str en Python|str en Python]]"
prerequisites:
  - "[[IA graphs/python/f-strings en Python|f-strings en Python]]"
parts: []
related:
  - "[[IA graphs/python/Unicode y codificación en Python|Unicode y codificación en Python]]"
contrasts:
  - "[[IA graphs/python/f-strings en Python|f-strings en Python]]"
---

# t-strings en Python

Forma parte de [[IA graphs/python/str en Python|str en Python]].

Antes de estudiar: [[IA graphs/python/f-strings en Python|f-strings en Python]].

Una t-string produce una plantilla estructurada en lugar de un str terminado.

Disponible desde Python 3.14. `t'Hola {nombre}'` devuelve un objeto `Template` de `string.templatelib`. Las expresiones se evalúan al crear la plantilla, pero el procesamiento posterior decide cómo unir, convertir o escapar los valores.

Interfaz de lectura de `Template`: `strings` es una tupla de partes estáticas; `interpolations`, una tupla de objetos `Interpolation`; `values`, una tupla de los valores evaluados. Cada interpolación expone `value`, `expression: str`, `conversion: str | None` y `format_spec: str`, todos de solo lectura.

La plantilla no escapa HTML, SQL ni otros formatos por sí sola. Quien la procesa debe aplicar las reglas del destino. Contrasta con [[IA graphs/python/f-strings en Python|f-strings]], que ya devuelven texto.

## Ejemplo verificable

```python
nombre = 'Luz'
plantilla = t'Hola {nombre}!'
print(plantilla.strings)
print(plantilla.values)
print(plantilla.interpolations[0].expression)
```

Salida esperada:

```text
('Hola ', '!')
('Luz',)
nombre
```

## Para comparar

- [[IA graphs/python/f-strings en Python|f-strings en Python]]

## Recuperación activa

> [!question]
> ¿Qué trabajo queda pendiente después de crear una t-string?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/string.templatelib.html).
