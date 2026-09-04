---
title: "Serialización con json en Python"
type: api-object
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
  - "api"
up:
  - "[[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]]"
prerequisites:
  - "[[IA graphs/python/dict en Python|dict en Python]]"
  - "[[IA graphs/python/str en Python|str en Python]]"
  - "[[IA graphs/python/None en Python|None en Python]]"
parts: []
related:
  - "[[IA graphs/python/Archivos y open en Python|Archivos y open en Python]]"
  - "[[IA graphs/python/TypedDict en Python|TypedDict en Python]]"
contrasts: []
---

# Serialización con json en Python

Forma parte de [[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]].

Antes de estudiar: [[IA graphs/python/dict en Python|dict en Python]] · [[IA graphs/python/str en Python|str en Python]] · [[IA graphs/python/None en Python|None en Python]].

JSON representa datos mediante texto para intercambiarlos o guardarlos.

`json.dumps(objeto, *, ensure_ascii=True, ...) -> str` serializa; `json.loads(texto) -> objeto` reconstruye valores compatibles. `dump(objeto, archivo) -> None` y `load(archivo)` operan sobre flujos. Estas funciones no modifican el objeto original.

Dicts, listas, números, texto, bool y None tienen correspondencias habituales. Las claves de objetos JSON son texto; las tuplas se serializan como arrays y vuelven como listas. Sets y clases propias no se convierten automáticamente: pueden producir `TypeError`. Texto inválido produce `JSONDecodeError`. Deserializar no valida un [[IA graphs/python/TypedDict en Python|contrato de dominio]].

## Ejemplo verificable

```python
import json

datos = {'nombre': 'Ana', 'activo': True, 'extra': None}
texto = json.dumps(datos, ensure_ascii=False)
print(texto)
print(json.loads(texto) == datos)
```

Salida esperada:

```text
{"nombre": "Ana", "activo": true, "extra": null}
True
```

## Recuperación activa

> [!question]
> ¿Por qué un JSON válido no garantiza que los datos cumplan el contrato de tu aplicación?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/json.html).
