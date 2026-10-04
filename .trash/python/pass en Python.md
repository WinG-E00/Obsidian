---
title: pass en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Estructuras de control en Python|Estructuras de control en Python]]"
prerequisites:
  - "[[Indentación y bloques en Python|Indentación y bloques en Python]]"
parts: []
related:
  - "[[continue en Python|continue en Python]]"
  - "[[Ellipsis en Python|Ellipsis en Python]]"
contrasts: []
---

# pass en Python

Forma parte de [[Estructuras de control en Python|Estructuras de control en Python]].

Antes de estudiar: [[Indentación y bloques en Python|Indentación y bloques en Python]].

pass es una sentencia que no realiza ninguna acción.

Permite escribir un bloque sintácticamente válido cuando todavía no se necesita una operación, por ejemplo en una clase mínima o una rama intencionalmente vacía.

No interrumpe ni omite la vuelta: las instrucciones siguientes se ejecutan. [[continue en Python|continue]] y [[break en Python|break]] sí cambian el flujo. El literal `...` produce el objeto Ellipsis; usarlo como marcador es una convención distinta.

## Ejemplo verificable

```python
for numero in [1, 2]:
    pass
    print(numero)
```

Salida esperada:

```text
1
2
```

## Recuperación activa

> [!question]
> ¿Por qué pass no evita que se ejecute el print?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/simple_stmts.html).
