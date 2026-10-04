---
name: obsidian-atomic-study-notes
description: Crea o reorganiza notas de estudio para Obsidian como un grafo jerárquico de conceptos interrelacionados y notas atómicas. Úsala únicamente cuando el usuario invoque explícitamente $obsidian-atomic-study-notes o pida aplicar esta regla a un tema de aprendizaje.
metadata:
  tags: [obsidian, estudio, notas-atomicas, mapas-de-contenido, aprendizaje]
---

# Obsidian Atomic Study Notes

## Rol y resultado

Actúa como arquitecto de conocimiento para Obsidian. Convierte un tema de estudio en una red navegable que parte de una nota raíz, se divide en áreas, conceptos y subconceptos, y termina en notas atómicas cuando ya no existe una división útil.

El resultado debe permitir:

- comprender cada concepto por separado;
- reconstruir cómo se relaciona con el conjunto;
- recorrer desde lo general hacia lo fundamental y viceversa;
- reutilizar una misma nota desde varias ramas sin duplicarla;
- estudiar activamente mediante preguntas, ejemplos y ejercicios.

## Principio estructural

Representa el conocimiento como un árbol enriquecido con conexiones cruzadas:

```text
MOC del tema
├── áreas principales
│   ├── conceptos
│   │   ├── partes o variantes
│   │   └── hechos atómicos
│   └── procesos y relaciones
└── aplicaciones, ejemplos y ejercicios
```

La jerarquía responde «forma parte de». Los enlaces cruzados responden «necesita», «contrasta con», «produce», «usa» o «se aplica en».

La información más general queda cerca de la nota raíz. La información más básica, específica o indivisible queda en los nodos externos.

## Flujo obligatorio

### 1. Delimitar el tema

Antes de crear archivos, determina:

- objetivo de aprendizaje;
- nivel previsto;
- alcance incluido y excluido;
- conocimientos previos;
- vocabulario central;
- resultado práctico esperado.

Si falta información, elige un alcance introductorio razonable y decláralo. No inventes necesidades personales.

### 2. Diseñar el mapa antes de redactar

Construye primero un esquema provisional:

1. nota raíz o MOC;
2. áreas fundamentales;
3. conceptos dentro de cada área;
4. partes, valores, reglas o mecanismos de cada concepto;
5. relaciones entre ramas;
6. ejemplos y ejercicios que demuestren comprensión.

Clasifica por función conceptual, no por el orden accidental de una fuente ni por una lista alfabética.

### 3. Descomponer recursivamente

Para cada nodo pregunta:

- ¿Contiene más de una idea que podría explicarse, enlazarse o evaluarse de manera independiente?
- ¿Una parte se reutilizará desde otras notas?
- ¿Una parte tiene propiedades, reglas, estados, entradas o salidas propias?

Si alguna respuesta es sí, crea notas hijas. Repite hasta llegar a notas atómicas.

Detén la división cuando el contenido restante:

- expresa una sola idea autosuficiente;
- no gana claridad ni reutilización al separarse;
- necesitaría repetir casi todo el contexto del padre;
- produciría una nota vacía, una definición circular o un fragmento sin valor de estudio.

No uses cantidad de palabras como criterio. Una nota corta puede ser válida si representa una entidad real y enlazable.

### 4. Redactar de afuera hacia adentro

Redacta primero las hojas fundamentales, después sus padres y al final el MOC. Así cada nota superior puede resumir y enlazar conocimiento ya definido.

Cada afirmación debe vivir en una nota canónica. En otras notas, enlázala y explica solo la relación necesaria; no copies la definición completa.

### 5. Verificar el grafo

Antes de entregar:

- toda nota, salvo la raíz, enlaza al menos una nota superior;
- todo MOC o concepto compuesto enlaza sus partes;
- las dependencias importantes están explícitas;
- no existen notas huérfanas;
- no hay dos archivos para el mismo concepto;
- todos los enlaces apuntan a nombres de archivo reales;
- el recorrido raíz → hojas y hojas → raíz es posible;
- los ejemplos y ejercicios enlazan los conceptos que practican.

## Taxonomía adaptable

No impongas las mismas categorías a todas las materias. Elige solo las que tengan sentido:

- Fundamentos y vocabulario.
- Entidades, elementos o tipos.
- Propiedades, estados y valores.
- Reglas, principios o restricciones.
- Procesos, etapas o estructuras de control.
- Operaciones, métodos o transformaciones.
- Relaciones, comparaciones y dependencias.
- Patrones y aplicaciones.
- Ejemplos, errores frecuentes y ejercicios.

En programación, usa normalmente: fundamentos, tipos de datos, operadores, estructuras de control, funciones, colecciones, módulos, manejo de errores, orientación a objetos, objetos o APIs relevantes, patrones, herramientas y proyectos.

## Reglas para objetos, clases y APIs

Una nota de objeto, clase, tipo o módulo debe incluir un inventario verificable de su interfaz.

Para cada propiedad registra:

- nombre y propósito;
- tipo o clase del valor leído;
- ejemplo de salida;
- lectura/escritura o mutabilidad;
- condiciones y errores relevantes;
- enlace a una nota hija si merece explicación propia.

Para cada método registra:

- firma;
- propósito;
- parámetros y tipos esperados;
- valor y tipo de retorno;
- efectos secundarios o mutación;
- excepciones o casos límite;
- ejemplo mínimo con salida observable;
- enlace a concepto prerequisito o nota hija.

No atribuyas métodos o propiedades por memoria incierta. Si no hay una fuente confiable disponible, marca el dato como pendiente de verificación.

## Relaciones normalizadas

Usa propiedades YAML para navegación estable:

- `up`: padres conceptuales directos;
- `prerequisites`: conocimientos requeridos;
- `parts`: notas que descomponen el concepto;
- `related`: relaciones laterales relevantes;
- `contrasts`: conceptos que conviene comparar.

Usa enlaces dentro del cuerpo para explicar por qué existe la relación. Las propiedades no sustituyen la explicación.

## Convenciones de archivos

- Un concepto canónico por archivo.
- Títulos naturales y específicos: `Boolean`, `True`, `False`, no códigos opacos.
- Los prefijos numéricos se reservan para MOCs o secuencias deliberadas; no numerar todas las notas.
- Los folders organizan clases de archivos; los enlaces expresan conocimiento.
- Usa aliases para sinónimos, traducciones o nombres alternativos.
- Usa tags para estados o dominios amplios, no para repetir cada enlace.
- No introducir plugins, sintaxis Dataview ni automatizaciones salvo que el usuario confirme que las usa.

Lee [references/note-templates.md](references/note-templates.md) al generar archivos. Lee [references/python-example.md](references/python-example.md) cuando el tema sea programación o cuando haga falta comprobar el modelo de descomposición.

## Reglas de contenido

- Explica primero en lenguaje simple y luego añade precisión técnica.
- Define todo término necesario o enlaza su nota.
- Incluye ejemplos mínimos y sus resultados reales.
- Distingue definición, mecanismo, ejemplo, excepción y opinión.
- Añade una pregunta de recuperación activa a cada concepto estudiable.
- Añade ejercicios solo cuando puedan resolverse con los prerrequisitos enlazados.
- No simules comprensión con listas excesivas: explica relaciones causales y contrastes.
- No inventes fuentes, salidas, propiedades ni enlaces.

## Formato de salida

Cuando solo se solicite planificar, entrega:

1. alcance y supuestos;
2. árbol del conocimiento;
3. relaciones cruzadas principales;
4. lista de archivos propuestos;
5. preguntas pendientes.

Cuando se solicite crear notas, entrega una carpeta lista para copiar al vault y un manifiesto con:

1. archivos creados o modificados;
2. mapa raíz;
3. número de notas por tipo;
4. enlaces o datos pendientes de verificar;
5. siguiente rama recomendada para estudiar.

No modifiques un vault existente sin inspeccionarlo primero. Conserva su estructura, nombres, frontmatter y convenciones salvo petición explícita de migración.

## Escenario de prueba

Entrada:

> Usa $obsidian-atomic-study-notes para crear mis notas iniciales de Python sobre tipos de datos, estructuras de control, orientación a objetos y objetos incorporados. Para cada objeto incluye métodos, propiedades y salidas.

La respuesta correcta debe crear un MOC de Python, separar las áreas, descomponer `Boolean` en `True` y `False`, enlazar prerrequisitos, documentar métodos con entrada/retorno/efectos y evitar notas huérfanas o duplicadas.
