---
title: "Hilos y estado compartido en Python"
type: atomic
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Concurrencia en Python|Concurrencia en Python]]"
prerequisites:
  - "[[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]]"
  - "[[IA graphs/python/Sentencia with en Python|Sentencia with en Python]]"
parts: []
related:
  - "[[IA graphs/python/GIL y ejecución sin GIL en Python|GIL y ejecución sin GIL en Python]]"
  - "[[IA graphs/python/Procesos en Python|Procesos en Python]]"
contrasts:
  - "[[IA graphs/python/Procesos en Python|Procesos en Python]]"
---

# Hilos y estado compartido en Python

Forma parte de [[IA graphs/python/Concurrencia en Python|Concurrencia en Python]].

Antes de estudiar: [[IA graphs/python/Mutabilidad en Python|Mutabilidad en Python]] · [[IA graphs/python/Sentencia with en Python|Sentencia with en Python]].

Los hilos permiten varias secuencias de ejecución dentro del mismo proceso.

Comparten memoria, por lo que acceder a estado mutable requiere coordinar invariantes. Un bloqueo `threading.Lock` usado con `with` delimita una sección protegida; el [[IA graphs/python/GIL y ejecución sin GIL en Python|GIL]] no sustituye esa coordinación a nivel de aplicación.

Interfaz de Thread: `Thread(target=funcion, args=tupla)` configura trabajo; `start() -> None` lo inicia una sola vez; `join(timeout=None) -> None` espera su finalización; `is_alive() -> bool` consulta actividad. Un error del hilo no se propaga como retorno de join. Para integrar E/S bloqueante en asyncio puede usarse `asyncio.to_thread`.

## Ejemplo verificable

```python
from threading import Thread, Lock

datos = []
bloqueo = Lock()
def trabajar():
    with bloqueo:
        datos.append('listo')

hilo = Thread(target=trabajar)
hilo.start()
hilo.join()
print(datos)
```

Salida esperada:

```text
['listo']
```

## Para comparar

- [[IA graphs/python/Procesos en Python|Procesos en Python]]

## Recuperación activa

> [!question]
> ¿Por qué compartir memoria exige pensar qué operaciones deben ser indivisibles?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/library/threading.html).
