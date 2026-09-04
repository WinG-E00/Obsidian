---
title: "Ruta de estudio de Python"
type: guide
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up:
  - "[[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites: []
parts: []
related: []
contrasts: []
---

# Ruta de estudio de Python

Forma parte de [[IA graphs/python/Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Un recorrido progresivo con comprobaciones de comprensión.

El orden siguiente es una ruta pedagógica sobre el grafo; no agrega padres artificiales a los conceptos. En cada etapa, ejecutá el ejemplo, modificá un dato y explicá el cambio antes de avanzar.

1. [[IA graphs/python/Ejecución de un programa en Python|Ejecución]] → [[IA graphs/python/Sintaxis de Python|sintaxis]] → [[IA graphs/python/Variables y asignación en Python|asignación]]. Comprobación: distinguí un nombre, un valor, una expresión y una sentencia.
2. [[IA graphs/python/Identidad e igualdad en Python|Identidad]] → [[IA graphs/python/Mutabilidad en Python|mutabilidad]] → [[IA graphs/python/Copia superficial y profunda en Python|copia]]. Comprobación: predecí qué nombres observan una modificación de una lista compartida.
3. [[IA graphs/python/Tipos numéricos en Python|Números]] → [[IA graphs/python/str en Python|texto]] → [[IA graphs/python/Secuencias en Python|secuencias]] → [[IA graphs/python/dict en Python|diccionarios]] → [[IA graphs/python/Tipos de conjunto en Python|conjuntos]]. Comprobación: justificá el tipo elegido para cantidades, posiciones, búsquedas por clave y pertenencia.
4. [[IA graphs/python/Expresiones y operadores en Python|Operadores]] → [[IA graphs/python/Evaluación booleana en Python|evaluación booleana]] → [[IA graphs/python/Condicional if en Python|if]] → [[IA graphs/python/Iterable en Python|iterable]] → [[IA graphs/python/Bucle for en Python|for]] → [[IA graphs/python/Bucle while en Python|while]]. Comprobación: explicá cómo termina cada bucle.
5. [[IA graphs/python/Definición de funciones en Python|Funciones]] → [[IA graphs/python/Parámetros y argumentos en Python|firmas]] → [[IA graphs/python/Retorno de funciones en Python|retorno]] → [[IA graphs/python/Ámbitos de nombres en Python|ámbitos]]. Comprobación: explicá la diferencia entre omitir un argumento, pasar None y compartir un valor mutable por defecto.
6. [[IA graphs/python/Iterador en Python|Iteradores]] → [[IA graphs/python/yield en Python|yield]] → [[IA graphs/python/Comprensiones en Python|comprensiones]]. Comprobación: predecí qué queda después de consumir un generador.
7. [[IA graphs/python/Módulo en Python|Módulos]] → [[IA graphs/python/import en Python|importación]] → [[IA graphs/python/Paquetes en Python|paquetes]] → [[IA graphs/python/Punto de entrada y __main__ en Python|punto de entrada]]. Comprobación: identificá qué código se ejecuta al importar.
8. [[IA graphs/python/Objeto excepción y propagación en Python|Excepciones]] → [[IA graphs/python/try y except en Python|try]] → [[IA graphs/python/raise y encadenamiento en Python|raise]] → [[IA graphs/python/finally en Python|finally]]. Comprobación: seguí un fallo a través de dos llamadas y explicá la limpieza.
9. [[IA graphs/python/Clases en Python|Clases]] → [[IA graphs/python/Atributos de instancia y de clase en Python|atributos]] → [[IA graphs/python/Métodos y self en Python|métodos]] → [[IA graphs/python/Herencia en Python|herencia]] → [[IA graphs/python/Composición en Python|composición]]. Comprobación: distinguí «es una variante de» de «usa otro objeto».
10. [[IA graphs/python/Anotaciones de funciones y variables en Python|Anotaciones]] → [[IA graphs/python/dataclasses en Python|dataclasses]] → [[IA graphs/python/Sentencia with en Python|with]] → [[IA graphs/python/Archivos y open en Python|archivos]] → [[IA graphs/python/Serialización con json en Python|JSON]] → [[IA graphs/python/Pruebas con unittest en Python|pruebas]]. Aplicación: completá [[IA graphs/python/Proyecto integrador de inventario en Python|el inventario]].
11. Profundización: [[IA graphs/python/Métodos especiales en Python|métodos especiales]], [[IA graphs/python/Descriptores en Python|descriptores]], [[IA graphs/python/Genéricos en Python|genéricos]] y [[IA graphs/python/Metaclases y creación de clases en Python|metaclases]]. Comprobación: explicá qué protocolo activa una operación de sintaxis.
12. [[IA graphs/python/Corrutinas y async def en Python|Corrutinas]] → [[IA graphs/python/await en Python|await]] → [[IA graphs/python/Gestores de contexto asíncronos en Python|contextos asíncronos]] → [[IA graphs/python/Tareas y TaskGroup en Python|TaskGroup]] → [[IA graphs/python/Cancelación asíncrona en Python|cancelación]]. Después compará [[IA graphs/python/Hilos y estado compartido en Python|hilos]], [[IA graphs/python/Procesos en Python|procesos]] y [[IA graphs/python/GIL y ejecución sin GIL en Python|GIL]]. Comprobación: separá concurrencia, paralelismo y estado compartido.

## Práctica acumulativa

En [[IA graphs/python/Proyecto integrador de inventario en Python|el proyecto integrador]], primero resolvé el comportamiento con funciones y datos. Después separalo en módulos, agregá persistencia y escribí pruebas de los casos límite. Una relación está comprendida cuando podés explicar por qué una modificación afecta otra parte del programa, no solo repetir la definición.

Si una pregunta no sale, seguí `prerequisites` hacia el fundamento correspondiente y regresá; no hace falta releer todo el mapa.

## Recuperación activa

> [!question]
> ¿Qué etapa podés explicar y modificar sin mirar la solución del ejemplo?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/index.html).
