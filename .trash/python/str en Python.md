---
title: str en Python
type: api-object
python_version: "3.14"
aliases:
  - String de Python
tags:
  - python
  - estudio
  - api
up:
  - "[[Secuencias en Python|Secuencias en Python]]"
prerequisites:
  - "[[Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[Indexación en Python|Indexación en Python]]"
parts:
  - "[[Unicode y codificación en Python|Unicode y codificación en Python]]"
  - "[[f-strings en Python|f-strings en Python]]"
  - "[[t-strings en Python|t-strings en Python]]"
  - "[[str.split en Python|str.split en Python]]"
  - "[[str.join en Python|str.join en Python]]"
  - "[[str.upper en Python|str.upper en Python]]"
related:
  - "[[Unicode y codificación en Python|Unicode y codificación en Python]]"
  - "[[f-strings en Python|f-strings en Python]]"
contrasts: []
---

# str en Python

Forma parte de [[Secuencias en Python|Secuencias en Python]].

Antes de estudiar: [[Mutabilidad en Python|Mutabilidad en Python]] · [[Indexación en Python|Indexación en Python]].

str es una secuencia inmutable de puntos de código Unicode.

Se crea con comillas o `str(objeto)`. Python no tiene un tipo `char` independiente. Indexar texto devuelve un `str` de longitud uno, aunque un símbolo visual pueda ocupar varios puntos de código; esto se explica en [[Unicode y codificación en Python|Unicode y codificación]].

Interfaz de uso habitual; todos estos métodos conservan el texto original:

| Firma | Entrada y propósito | Retorno y ejemplo | Límite |
|---|---|---|---|
| `upper()`, `lower()`, `casefold()` | Sin argumentos; cambia tratamiento de mayúsculas | `'a'.upper()` → `'A': str` | Unicode puede cambiar la longitud |
| `strip(chars=None)` | Quita caracteres de extremos | `' a '.strip()` → `'a': str` | `chars` es un conjunto de caracteres, no un prefijo |
| `removeprefix(prefix)`, `removesuffix(suffix)` | Texto exacto del extremo | `'pre_a'.removeprefix('pre_')` → `'a': str` | Si no coincide conserva el valor |
| `split(sep=None, maxsplit=-1)` | Separa por texto o espacios | `'a,b'.split(',')` → `['a', 'b']: list[str]` | Separador vacío: `ValueError` |
| `join(iterable)` | Une cadenas usando el receptor | `'-'.join(['a','b'])` → `'a-b': str` | Elemento no str: `TypeError` |
| `replace(old, new, count=-1)` | Sustituye hasta count coincidencias | `'aba'.replace('a','x')` → `'xbx': str` | No modifica el original |
| `find(sub, start=0, end=fin)` | Busca una subcadena | `'abc'.find('b')` → `1: int` | Devuelve -1 si falta |
| `index(sub, start=0, end=fin)` | Busca exigiendo coincidencia | `'abc'.index('b')` → `1: int` | Si falta: `ValueError` |
| `startswith(prefix)`, `endswith(suffix)` | Comprueba un extremo | `'abc'.endswith('c')` → `True: bool` | Acepta también tupla de textos |
| `count(sub)` | Cuenta apariciones no superpuestas | `'aba'.count('a')` → `2: int` | Subcadena vacía cuenta posiciones |
| `isalpha()`, `isdigit()`, `isspace()` | Clasifica texto no vacío | `'abc'.isalpha()` → `True: bool` | No equivalen a validar cualquier número |
| `format(*args, **kwargs)` | Rellena campos `{}` | `'{}'.format(7)` → `'7': str` | Campo inexistente: `IndexError` o `KeyError` |
| `encode(encoding='utf-8', errors='strict')` | Codifica el texto | `'a'.encode()` → `b'a': bytes` | Puede producir `UnicodeEncodeError` |

`fin` en esta tabla indica el final de la cadena cuando el argumento se omite; no es un nombre que haya que pasar. No hay propiedades públicas editables para sus caracteres. La referencia enlazada contiene la interfaz completa y opciones adicionales.

## Partes del concepto

- [[Unicode y codificación en Python|Unicode y codificación en Python]] — Unicode identifica caracteres; una codificación define cómo representarlos mediante bytes.
- [[f-strings en Python|f-strings en Python]] — Una f-string evalúa expresiones y construye texto en ese momento.
- [[t-strings en Python|t-strings en Python]] — Una t-string produce una plantilla estructurada en lugar de un str terminado.
- [[str.split en Python|str.split en Python]] — str.split divide un texto y devuelve una lista de cadenas.
- [[str.join en Python|str.join en Python]] — str.join construye una cadena intercalando un separador entre textos.
- [[str.upper en Python|str.upper en Python]] — str.upper devuelve el texto transformado a mayúsculas según Unicode.

## Ejemplo verificable

```python
texto = 'hola'
resultado = texto.upper()
print(texto, resultado)
print(texto[0], len(texto))
```

Salida esperada:

```text
hola HOLA
h 4
```

## Recuperación activa

> [!question]
> ¿Por qué texto.upper() no cambia lo que muestra print(texto)?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/stdtypes.html).
