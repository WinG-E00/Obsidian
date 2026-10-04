---
title: Ruta de estudio de Python
type: guide
python_version: "3.14"
aliases: []
tags:
  - python
  - estudio
up:
  - "[[Python - Mapa del lenguaje|Python - Mapa del lenguaje]]"
prerequisites: []
parts: []
related: []
contrasts: []
---

# Ruta de estudio de Python

Forma parte de [[Python - Mapa del lenguaje|Python - Mapa del lenguaje]].

Un recorrido progresivo con comprobaciones de comprensión.

El orden siguiente es una ruta pedagógica sobre el grafo; no agrega padres artificiales a los conceptos. En cada etapa, ejecutá el ejemplo, modificá un dato y explicá el cambio antes de avanzar.

1. [[Ejecución de un programa en Python|Ejecución]] → [[Sintaxis de Python|sintaxis]] → [[Variables y asignación en Python|asignación]]. Comprobación: distinguí un nombre, un valor, una expresión y una sentencia.
2. [[Identidad e igualdad en Python|Identidad]] → [[Mutabilidad en Python|mutabilidad]] → [[Copia superficial y profunda en Python|copia]]. Comprobación: predecí qué nombres observan una modificación de una lista compartida.
3. [[Tipos numéricos en Python|Números]] → [[str en Python|texto]] → [[Secuencias en Python|secuencias]] → [[dict en Python|diccionarios]] → [[Tipos de conjunto en Python|conjuntos]]. Comprobación: justificá el tipo elegido para cantidades, posiciones, búsquedas por clave y pertenencia.
4. [[Expresiones y operadores en Python|Operadores]] → [[Evaluación booleana en Python|evaluación booleana]] → [[Condicional if en Python|if]] → [[Iterable en Python|iterable]] → [[Bucle for en Python|for]] → [[Bucle while en Python|while]]. Comprobación: explicá cómo termina cada bucle.
5. [[Definición de funciones en Python|Funciones]] → [[Parámetros y argumentos en Python|firmas]] → [[Retorno de funciones en Python|retorno]] → [[Ámbitos de nombres en Python|ámbitos]]. Comprobación: explicá la diferencia entre omitir un argumento, pasar None y compartir un valor mutable por defecto.
6. [[Iterador en Python|Iteradores]] → [[yield en Python|yield]] → [[Comprensiones en Python|comprensiones]]. Comprobación: predecí qué queda después de consumir un generador.
7. [[Módulo en Python|Módulos]] → [[import en Python|importación]] → [[Paquetes en Python|paquetes]] → [[Punto de entrada y __main__ en Python|punto de entrada]]. Comprobación: identificá qué código se ejecuta al importar.
8. [[Objeto excepción y propagación en Python|Excepciones]] → [[try y except en Python|try]] → [[raise y encadenamiento en Python|raise]] → [[finally en Python|finally]]. Comprobación: seguí un fallo a través de dos llamadas y explicá la limpieza.
9. [[Clases en Python|Clases]] → [[Atributos de instancia y de clase en Python|atributos]] → [[Métodos y self en Python|métodos]] → [[Herencia en Python|herencia]] → [[Composición en Python|composición]]. Comprobación: distinguí «es una variante de» de «usa otro objeto».
10. [[Anotaciones de funciones y variables en Python|Anotaciones]] → [[dataclasses en Python|dataclasses]] → [[Sentencia with en Python|with]] → [[Archivos y open en Python|archivos]] → [[Serialización con json en Python|JSON]] → [[Pruebas con unittest en Python|pruebas]]. Aplicación: completá [[Proyecto integrador de inventario en Python|el inventario]].
11. Profundización: [[Métodos especiales en Python|métodos especiales]], [[Descriptores en Python|descriptores]], [[Genéricos en Python|genéricos]] y [[Metaclases y creación de clases en Python|metaclases]]. Comprobación: explicá qué protocolo activa una operación de sintaxis.
12. [[Corrutinas y async def en Python|Corrutinas]] → [[await en Python|await]] → [[Gestores de contexto asíncronos en Python|contextos asíncronos]] → [[Tareas y TaskGroup en Python|TaskGroup]] → [[Cancelación asíncrona en Python|cancelación]]. Después compará [[Hilos y estado compartido en Python|hilos]], [[Procesos en Python|procesos]] y [[GIL y ejecución sin GIL en Python|GIL]]. Comprobación: separá concurrencia, paralelismo y estado compartido.

## Práctica acumulativa

En [[Proyecto integrador de inventario en Python|el proyecto integrador]], primero resolvé el comportamiento con funciones y datos. Después separalo en módulos, agregá persistencia y escribí pruebas de los casos límite. Una relación está comprendida cuando podés explicar por qué una modificación afecta otra parte del programa, no solo repetir la definición.

Si una pregunta no sale, seguí `prerequisites` hacia el fundamento correspondiente y regresá; no hace falta releer todo el mapa.

## Recuperación activa

> [!question]
> ¿Qué etapa podés explicar y modificar sin mirar la solución del ejemplo?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/index.html).
