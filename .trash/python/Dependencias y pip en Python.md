---
title: Dependencias y pip en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[Entornos virtuales en Python|Entornos virtuales en Python]]"
  - "[[Módulo en Python|Módulo en Python]]"
parts: []
related:
  - "[[Estructura de un proyecto en Python|Estructura de un proyecto en Python]]"
contrasts: []
---

# Dependencias y pip en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[Entornos virtuales en Python|Entornos virtuales en Python]] · [[Módulo en Python|Módulo en Python]].

pip instala distribuciones de paquetes en el entorno del intérprete seleccionado.

Comandos de uso: `python -m pip install nombre`, `python -m pip list` y `python -m pip install -r requirements.txt`. Una distribución y el módulo que se importa pueden tener nombres diferentes.

Un archivo de requisitos puede fijar versiones para un entorno concreto. `pyproject.toml` declara metadatos y dependencias de un proyecto distribuible; no es sinónimo de un archivo de bloqueo completo. Mantener una estrategia reproducible requiere conocer las herramientas utilizadas y registrar sus decisiones.

El ejemplo solo ilustra el concepto importable: consulta metadatos de la biblioteca estándar sin instalar nada. Las instrucciones de instalación son para usar dentro de [[Entornos virtuales en Python|un entorno virtual]].

## Ejemplo verificable

```python
from importlib import metadata

print(callable(metadata.version))
```

Salida esperada:

```text
True
```

## Recuperación activa

> [!question]
> ¿Por qué el nombre instalado con pip no siempre coincide con el nombre usado en import?

## Referencia

[Documentación oficial de empaquetado de Python](https://packaging.python.org/en/latest/tutorials/installing-packages/).
