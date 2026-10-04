---
title: Punto de entrada y __main__ en Python
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
  - "[[Condicional if en Python|Condicional if en Python]]"
  - "[[Definición de funciones en Python|Definición de funciones en Python]]"
parts: []
related:
  - "[[Paquetes en Python|Paquetes en Python]]"
  - "[[Pruebas con unittest en Python|Pruebas con unittest en Python]]"
contrasts: []
---

# Punto de entrada y __main__ en Python

Forma parte de [[Módulos y paquetes en Python|Módulos y paquetes en Python]].

Antes de estudiar: [[Módulo en Python|Módulo en Python]] · [[Condicional if en Python|Condicional if en Python]] · [[Definición de funciones en Python|Definición de funciones en Python]].

El módulo que inicia una ejecución recibe el nombre __main__.

El guard `if __name__ == '__main__':` permite llamar una función de entrada solo cuando ese módulo se ejecuta como programa. Al importarlo por su nombre habitual, el guard no se cumple, aunque el resto del código de nivel superior sí se ejecuta.

`python3 -m paquete` ejecuta su `__main__.py`; `python3 -m paquete.modulo` ejecuta ese módulo dentro del contexto del paquete. Separar entrada y lógica permite [[Pruebas con unittest en Python|probar funciones]] sin iniciar automáticamente la aplicación.

## Ejemplo verificable

```python
def main():
    print('programa iniciado')

if __name__ == '__main__':
    main()
```

Salida esperada:

```text
programa iniciado
```

## Recuperación activa

> [!question]
> ¿Qué parte de un archivo se evita al importar gracias al guard de __main__?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/tutorial/modules.html).
