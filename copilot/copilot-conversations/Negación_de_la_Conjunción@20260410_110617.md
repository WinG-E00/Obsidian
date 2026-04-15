---
epoch: 1775829977928
modelKey: "google/gemini-2.5-flash|openrouterai"
topic: "Negación de la Conjunción"



tags:
  - copilot-conversation
---

**user**: Explica negacion de la conjuncion
[Context: Notes: Negacion conjuncion.md]
[Timestamp: 2026/04/10 11:06:17]

**ai**: La negación de la conjunción es un concepto fundamental en lógica proposicional. Se basa en la Ley de De Morgan, que establece una equivalencia entre la negación de una conjunción y la disyunción de las negaciones de las proposiciones individuales.

**Definición:**

La negación de la conjunción de dos proposiciones $P$ y $Q$, denotada como $\neg(P \land Q)$, es lógicamente equivalente a la disyunción de la negación de $P$ y la negación de $Q$, es decir, $(\neg P \lor \neg Q)$.

**En otras palabras:**

Decir que "no es cierto que $P$ y $Q$ sean ambas verdaderas" es lo mismo que decir "o $P$ no es verdadera, o $Q$ no es verdadera (o ambas no son verdaderas)".

**Fórmula:**

$\neg(P \land Q) \equiv (\neg P \lor \neg Q)$

**Tabla de Verdad:**

Para entender mejor esta equivalencia, podemos construir una tabla de verdad:

| $P$ | $Q$ | $P \land Q$ | $\neg(P \land Q)$ | $\neg P$ | $\neg Q$ | $\neg P \lor \neg Q$ |
|---|---|---|---|---|---|---|
| V | V | V | F | F | F | F |
| V | F | F | V | F | V | V |
| F | V | F | V | V | F | V |
| F | F | F | V | V | V | V |

Como puedes observar en la tabla, las columnas de $\neg(P \land Q)$ y $\neg P \lor \neg Q$ son idénticas, lo que confirma su equivalencia lógica.

**Ejemplo:**

Consideremos las proposiciones:
* $P$: "Está lloviendo"
* $Q$: "Hace frío"

La conjunción sería: $P \land Q$: "Está lloviendo y hace frío".

La negación de la conjunción sería: $\neg(P \land Q)$: "No es cierto que esté lloviendo y haga frío".

Aplicando la Ley de De Morgan, esto es equivalente a: $\neg P \lor \neg Q$: "No está lloviendo o no hace frío".

Ambas expresiones tienen el mismo significado lógico.
[Timestamp: 2026/04/10 11:06:21]