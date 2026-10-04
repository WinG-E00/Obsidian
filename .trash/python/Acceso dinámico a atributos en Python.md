---
title: Acceso dinámico a atributos en Python
type: atomic
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
prerequisites:
  - "[[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]]"
  - "[[Descriptores en Python|Descriptores en Python]]"
parts: []
related:
  - "[[property en Python|property en Python]]"
contrasts: []
---

# Acceso dinámico a atributos en Python

Forma parte de [[Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]].

Antes de estudiar: [[Atributos de instancia y de clase en Python|Atributos de instancia y de clase en Python]] · [[Descriptores en Python|Descriptores en Python]].

El acceso a atributos puede inspeccionarse o personalizarse mediante funciones y métodos especiales.

`getattr(obj, nombre[, defecto])` consulta; `setattr(obj, nombre, valor)` asigna; `delattr` elimina. `hasattr` intenta acceder y solo interpreta `AttributeError` como ausencia: la consulta puede ejecutar una property.

`__getattribute__` interviene en las consultas normales; `__getattr__` se consulta cuando la búsqueda termina en `AttributeError`. Un `__setattr__` personalizado debe delegar cuidadosamente, por ejemplo en `object.__setattr__`, para no recursar. El ejemplo proporciona solo el atributo virtual `doble: int`; los demás nombres faltantes siguen fallando.

## Ejemplo verificable

```python
class Virtual:
    def __getattr__(self, nombre):
        if nombre == 'doble':
            return 2
        raise AttributeError(nombre)

v = Virtual()
print(getattr(v, 'doble'))
print(getattr(v, 'otro', 'ausente'))
```

Salida esperada:

```text
2
ausente
```

## Recuperación activa

> [!question]
> ¿Por qué hasattr puede ejecutar código del objeto?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/datamodel.html).
