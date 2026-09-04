---
title: "Python - Mapa del lenguaje"
type: moc
python_version: "3.14"
aliases: []
tags:
  - "python"
  - "estudio"
up: []
prerequisites: []
parts:
  - "[[IA graphs/python/Fundamentos de Python|Fundamentos de Python]]"
  - "[[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]]"
  - "[[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]]"
  - "[[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]]"
  - "[[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]]"
  - "[[IA graphs/python/Funciones en Python|Funciones en Python]]"
  - "[[IA graphs/python/Iteración en Python|Iteración en Python]]"
  - "[[IA graphs/python/Módulos y paquetes en Python|Módulos y paquetes en Python]]"
  - "[[IA graphs/python/Excepciones en Python|Excepciones en Python]]"
  - "[[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]]"
  - "[[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]]"
  - "[[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]]"
  - "[[IA graphs/python/Concurrencia en Python|Concurrencia en Python]]"
  - "[[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]]"
  - "[[IA graphs/python/Ruta de estudio de Python|Ruta de estudio de Python]]"
  - "[[IA graphs/python/Manifiesto de documentación de Python|Manifiesto de documentación de Python]]"
related: []
contrasts: []
---

# Python - Mapa del lenguaje

Un mapa conectado para entender la estructura del lenguaje Python.

Esta colección explica el núcleo del lenguaje Python en español, desde la sintaxis y los objetos hasta protocolos, tipado y concurrencia. Está pensada para avanzar desde nivel inicial a mecanismos avanzados; no presupone experiencia previa con Python. El objetivo práctico es poder leer un programa, explicar sus efectos y organizar uno propio.

## Mapa de áreas y navegación

- [[IA graphs/python/Fundamentos de Python|Fundamentos de Python]] — Cómo se escribe y ejecuta un programa.
- [[IA graphs/python/Modelo de objetos en Python|Modelo de objetos en Python]] — Cómo los nombres, los tipos y la identidad explican el comportamiento de los datos.
- [[IA graphs/python/Tipos de datos en Python|Tipos de datos en Python]] — Qué valores existen y qué operaciones permite cada tipo.
- [[IA graphs/python/Expresiones y operadores en Python|Expresiones y operadores en Python]] — Cómo se combinan valores para obtener resultados.
- [[IA graphs/python/Estructuras de control en Python|Estructuras de control en Python]] — Cómo elegir y repetir instrucciones.
- [[IA graphs/python/Funciones en Python|Funciones en Python]] — Cómo definir operaciones reutilizables y resolver nombres.
- [[IA graphs/python/Iteración en Python|Iteración en Python]] — Cómo recorrer y producir datos de forma progresiva.
- [[IA graphs/python/Módulos y paquetes en Python|Módulos y paquetes en Python]] — Cómo se organiza y se carga código entre archivos.
- [[IA graphs/python/Excepciones en Python|Excepciones en Python]] — Cómo se representan, propagan y manejan los fallos.
- [[IA graphs/python/Orientación a objetos en Python|Orientación a objetos en Python]] — Cómo definir tipos propios y distribuir responsabilidades.
- [[IA graphs/python/Protocolos del modelo de datos en Python|Protocolos del modelo de datos en Python]] — Cómo una clase participa en la sintaxis del lenguaje.
- [[IA graphs/python/Anotaciones de tipos en Python|Anotaciones de tipos en Python]] — Cómo expresar contratos verificables sin cambiar el tipado dinámico.
- [[IA graphs/python/Concurrencia en Python|Concurrencia en Python]] — Cómo coordinar trabajo que espera o se ejecuta simultáneamente.
- [[IA graphs/python/Herramientas y práctica de Python|Herramientas y práctica de Python]] — Cómo conectar el lenguaje con archivos, entornos y pruebas.
- [[IA graphs/python/Ruta de estudio de Python|Ruta de estudio de Python]] — Un recorrido progresivo con comprobaciones de comprensión.
- [[IA graphs/python/Manifiesto de documentación de Python|Manifiesto de documentación de Python]] — Alcance, inventario y verificación de esta colección.

## Cómo recorrer este grafo

La jerarquía expresa **forma parte de**: mapa → área → concepto compuesto → nota atómica. Un ejemplo de descenso es tipos → tipos numéricos → bool → True. Cada nota permite volver a su padre directo; las notas compuestas enumeran sus partes.

Los enlaces de prerrequisitos indican qué entender antes; los enlaces dentro de la explicación indican relaciones como «usa», «produce» o «contrasta con». Las properties `up`, `parts`, `prerequisites`, `related` y `contrasts` conservan esas relaciones. Las carpetas y tags no sustituyen la jerarquía conceptual.

Empezá por [[IA graphs/python/Ruta de estudio de Python|la ruta de estudio]]. Si llegás a una nota desde una búsqueda, leé sus prerrequisitos y su pregunta de recuperación antes de continuar.

## Alcance y versión

Referencia de lenguaje: Python 3.14. Los ejemplos usan la biblioteca estándar y son independientes salvo que se indique un ejercicio de ampliación. Las características recientes, como parámetros de tipo, grupos de excepciones, t-strings y anotaciones diferidas, se identifican en sus notas. Para ejecutar todos los ejemplos, usá Python 3.14.

La cobertura incluye estructura léxica, valores y tipos, evaluación de expresiones, sentencias simples y compuestas, modelo de ejecución, importación, objetos y protocolos. Añade herramientas prácticas, un recorrido de biblioteca estándar y un proyecto integrador. Los detalles internos de CPython se distinguen de las garantías del lenguaje.

No es una copia exhaustiva de todos los módulos estándar, todas las firmas y variantes de APIs, la API C o frameworks externos. Las tablas de interfaz documentan operaciones de estudio y remiten a la referencia oficial para el inventario completo. Las notas de métodos separan entrada, retorno, mutación y errores cuando esos contratos merecen explicación propia.

## Convenciones para leer firmas

`/` termina los parámetros solo posicionales; `*` inicia los solo por nombre; `*args` y `**kwargs` recogen argumentos adicionales. En firmas documentales, corchetes alrededor de argumentos indican opcionalidad y un límite llamado `fin` indica el final de la secuencia al omitirse; no se copian literalmente a la llamada.

Los bloques Python muestran código y los bloques de salida muestran el resultado esperado. Los ejemplos de archivos usan recursos temporales; los comandos de instalación o creación de entornos se documentan para que los ejecutes en tu proyecto cuando corresponda.

## Correspondencia con la referencia del lenguaje

| Estructura oficial | Rama de estudio |
|---|---|
| Análisis léxico | [[IA graphs/python/Sintaxis de Python\|Sintaxis]] |
| Modelo de datos | [[IA graphs/python/Modelo de objetos en Python\|Objetos]], [[IA graphs/python/Tipos de datos en Python\|tipos]] y [[IA graphs/python/Protocolos del modelo de datos en Python\|protocolos]] |
| Modelo de ejecución | [[IA graphs/python/Ejecución de un programa en Python\|Ejecución]], [[IA graphs/python/Ámbitos de nombres en Python\|ámbitos]] y [[IA graphs/python/Excepciones en Python\|excepciones]] |
| Sistema de importación | [[IA graphs/python/Módulos y paquetes en Python\|Módulos y paquetes]] |
| Expresiones | [[IA graphs/python/Expresiones y operadores en Python\|Operadores]], [[IA graphs/python/Iteración en Python\|iteración]] y [[IA graphs/python/Funciones en Python\|funciones]] |
| Sentencias simples | Asignación, retorno, importación y manejo de errores en sus ramas |
| Sentencias compuestas | [[IA graphs/python/Estructuras de control en Python\|Control]], [[IA graphs/python/Orientación a objetos en Python\|clases]], [[IA graphs/python/Gestores de contexto en Python\|contextos]] y [[IA graphs/python/Concurrencia en Python\|concurrencia]] |
| Anotaciones y parámetros de tipo | [[IA graphs/python/Anotaciones de tipos en Python\|Tipado]] |

La clasificación es conceptual, no una herencia de clases: que dos notas tengan el mismo padre de estudio no implica que sus tipos hereden entre sí.

## Procedencia de la estructura

Al crear esta colección, `rules/rules_for_notes_creation.md` estaba vacío. Se aplicó tu pedido explícito de jerarquía atómica y se tomó como referencia complementaria la guía local `IA graphs/obsidian-atomic-study-notes/SKILL.md`, junto con la skill `obsidian-markdown`. El [[IA graphs/python/Manifiesto de documentación de Python|manifiesto]] registra archivos y verificaciones.

## Recuperación activa

> [!question]
> ¿Podés explicar cómo una instrucción for relaciona sintaxis, objetos, iterables, tipos y control de flujo?

## Referencia

[Documentación oficial de Python 3.14](https://docs.python.org/3.14/reference/index.html).
