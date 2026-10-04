---
title: Entornos virtuales en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[Ejecución de un programa en Python|Ejecución de un programa en Python]]"
  - "[[Módulo en Python|Módulo en Python]]"
parts: []
related:
  - "[[Dependencias y pip en Python|Dependencias y pip en Python]]"
  - "[[Estructura de un proyecto en Python|Estructura de un proyecto en Python]]"
contrasts: []
---

# Entornos virtuales en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[Ejecución de un programa en Python|Ejecución de un programa en Python]] · [[Módulo en Python|Módulo en Python]].

Un entorno virtual separa el intérprete usado por un proyecto y su ubicación de paquetes.

`python3 -m venv .venv` crea un entorno dentro del proyecto. En bash se puede activar con `source .venv/bin/activate`; también se puede invocar directamente `.venv/bin/python` sin activación. En Windows la ubicación habitual del ejecutable está bajo `Scripts`.

Activar cambia principalmente cómo la terminal encuentra comandos; no transforma los archivos del proyecto ni aísla procesos como un contenedor. `python -m pip` usa el pip asociado a ese intérprete. No se debe copiar el entorno como si fuera una dependencia portable: se reconstruye desde declaraciones de paquetes.

El ejemplo consulta una propiedad de venv sin crear ni activar uno.

## Ejemplo verificable

```python
import venv

constructor = venv.EnvBuilder(with_pip=True)
print(constructor.with_pip)
```

Salida esperada:

```text
True
```

## Recuperación activa

> [!question]
> ¿Por qué invocar python -m pip ayuda a instalar en el entorno correcto?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/venv.html).
