---
title: import en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Módulos y paquetes en Python|Módulos y paquetes en Python]]"
prerequisites:
  - "[[Módulo en Python|Módulo en Python]]"
  - "[[Variables y asignación en Python|Variables y asignación en Python]]"
parts: []
related:
  - "[[Sistema de importación en Python|Sistema de importación en Python]]"
contrasts: []
---

# import en Python

Forma parte de [[Módulos y paquetes en Python|Módulos y paquetes en Python]].

Antes de estudiar: [[Módulo en Python|Módulo en Python]] · [[Variables y asignación en Python|Variables y asignación en Python]].

import carga o reutiliza un módulo y vincula nombres en el ámbito actual.

`import math` vincula el módulo; `from math import sqrt` vincula directamente un atributo; `import math as m` cambia el nombre local. `from modulo import *` dificulta ver el origen de los nombres y se ve afectado por `__all__` si existe.

Una vinculación importada no es una sincronización continua con futuras reasignaciones del atributo original. [[Sistema de importación en Python|El sistema de importación]] reutiliza módulos ya cargados normalmente mediante `sys.modules`. El código de nivel superior puede tener efectos al importar.

## Ejemplo verificable

```python
import math as m
from math import isqrt
print(m.sqrt(16), isqrt(16))
```

Salida esperada:

```text
4.0 4
```

## Recuperación activa

> [!question]
> ¿Qué diferencia hay entre vincular un módulo y vincular uno de sus atributos?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
