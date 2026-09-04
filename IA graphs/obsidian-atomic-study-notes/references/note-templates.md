# Plantillas de notas

## MOC del tema

```markdown
---
type: moc
topic: Nombre del tema
status: growing
tags: [estudio]
---

# Nombre del tema

## Propósito

Qué permite comprender o hacer este tema.

## Alcance

- Incluye:
- No incluye todavía:

## Prerrequisitos

- [[Concepto previo]] — por qué hace falta.

## Mapa

- [[Área 1]] — función dentro del tema.
- [[Área 2]] — función dentro del tema.

## Relaciones entre áreas

- [[Área 1]] se conecta con [[Área 2]] porque...

## Ruta sugerida

1. [[Concepto inicial]]
2. [[Concepto siguiente]]
```

## Nota de concepto compuesto

```markdown
---
type: concept
up:
  - "[[Nota superior]]"
prerequisites:
  - "[[Prerrequisito]]"
parts:
  - "[[Parte A]]"
  - "[[Parte B]]"
related: []
contrasts: []
aliases: []
tags: [estudio]
---

# Concepto

## En una frase

Definición sencilla y precisa.

## Cómo encaja

Qué papel cumple respecto de [[Nota superior]].

## Partes

- [[Parte A]] — relación concreta.
- [[Parte B]] — relación concreta.

## Cómo funciona

Mecanismo, reglas o proceso.

## Ejemplo

Ejemplo mínimo y resultado.

## Errores frecuentes

- Confusión y corrección.

## Recuperación activa

> Pregunta que obligue a recordar o aplicar el concepto.
```

## Nota atómica

```markdown
---
type: atomic
up:
  - "[[Nota superior]]"
prerequisites: []
related: []
contrasts: []
aliases: []
tags: [estudio]
---

# Concepto atómico

## Definición

Una idea autosuficiente.

## Relación

Forma parte de [[Nota superior]] porque...

## Ejemplo

Ejemplo mínimo y salida observable.

## Límite o contraste

Qué no significa o con qué suele confundirse.

## Recuperación activa

> Pregunta breve cuya respuesta sea esta idea.
```

## Nota de objeto, clase, tipo o módulo

```markdown
---
type: api-object
up:
  - "[[Área superior]]"
prerequisites: []
parts: []
related: []
contrasts: []
aliases: []
tags: [estudio, api]
---

# Nombre del objeto

## Qué representa

Definición y papel dentro del sistema.

## Creación

Código mínimo y valor resultante.

## Propiedades

| Propiedad | Propósito | Tipo de salida | Ejemplo de salida | Acceso o mutabilidad |
|---|---|---|---|---|
| `propiedad` | ... | `Tipo` | `resultado` | lectura/escritura |

## Métodos

| Método | Parámetros | Retorno | Muta | Errores relevantes |
|---|---|---|---|---|
| `metodo(x)` | `x: Tipo` | `Tipo` | no | ... |

## Ejemplos con salida

```python
resultado = objeto.metodo(valor)
print(resultado)
# salida: ...
```

## Casos límite

- Caso y comportamiento.

## Relaciones

- Usa [[Concepto]].
- Contrasta con [[Otro objeto]].

## Recuperación activa

> ¿Qué devuelve `metodo` y modifica el objeto original?
```

## Nota de método significativo

```markdown
---
type: method
up:
  - "[[Objeto propietario]]"
prerequisites: []
related: []
tags: [estudio, api]
---

# Objeto.metodo

## Firma

`objeto.metodo(parametro) -> TipoRetornado`

## Entrada

| Parámetro | Tipo | Obligatorio | Significado |
|---|---|---|---|

## Salida

Tipo, valor y condiciones de retorno.

## Efectos

Indicar si muta estado, realiza E/S o no tiene efectos secundarios.

## Ejemplo verificable

Código mínimo y salida exacta.

## Casos límite y errores

- Condición → comportamiento o excepción.

## Recuperación activa

> Pregunta sobre entrada, retorno o mutación.
```
