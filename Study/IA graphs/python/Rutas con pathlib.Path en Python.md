---
title: Rutas con pathlib.Path en Python
type: api-object
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
  - api
up:
  - "[[Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[str en Python|str en Python]]"
  - "[[Módulo en Python|Módulo en Python]]"
parts: []
related:
  - "[[Archivos y open en Python|Archivos y open en Python]]"
contrasts: []
---

# Rutas con pathlib.Path en Python

Forma parte de [[Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[str en Python|str en Python]] · [[Módulo en Python|Módulo en Python]].

Path representa rutas y ofrece operaciones para trabajar con el sistema de archivos.

`Path(segmentos...)` construye una ruta y `/` combina componentes. Construirla no crea un archivo. Una ruta relativa se interpreta desde el directorio de trabajo del proceso, no necesariamente desde el archivo Python.

Propiedades de lectura: `name: str`, `stem: str`, `suffix: str`, `parent: Path` y `parts: tuple[str, ...]`. Para `Path('datos/nota.txt')` valen `'nota.txt'`, `'nota'`, `'.txt'`, `Path('datos')` y los componentes.

Métodos principales: `exists() -> bool`, `is_file() -> bool`, `mkdir(parents=False, exist_ok=False) -> None`, `read_text(encoding=...) -> str`, `write_text(texto, encoding=...) -> int`, `iterdir() -> iterador[Path]` y `glob(patron) -> iterador[Path]`. Los accesos pueden fallar por permisos o ausencia; `write_text` sobrescribe el archivo. El ejemplo solo manipula la representación de una ruta.

## Ejemplo verificable

```python
from pathlib import Path

ruta = Path('datos') / 'nota.txt'
print(ruta.name, ruta.stem, ruta.suffix)
print(ruta.parent.name)
```

Salida esperada:

```text
nota.txt nota .txt
datos
```

## Recuperación activa

> [!question]
> ¿Desde dónde se resuelve una ruta relativa?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/pathlib.html).
