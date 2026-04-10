---
epoch: 1775829085120
modelKey: "google/gemini-2.5-flash|openrouterai"
topic: "Negación de Conjunción Proposiciones"



tags:
  - copilot-conversation
---

**user**: explica negacion de la conjuncion proposiciones
[Context: Notes: Negaciones de preposiciones.md]
[Timestamp: 2026/04/10 10:51:25]

**ai**: La negación de la conjunción es una operación lógica que invierte el valor de verdad de una conjunción. Si tienes dos proposiciones, P y Q, su conjunción se escribe como P $\land$ Q. La negación de esta conjunción se escribe como $\neg$(P $\land$ Q).

Según las leyes de De Morgan, la negación de una conjunción es equivalente a la disyunción de las negaciones de las proposiciones individuales. Es decir:

$\neg$(P $\land$ Q) $\equiv$ $\neg$P $\lor$ $\neg$Q

En palabras, esto significa que "no (P y Q)" es lo mismo que "no P o no Q".

Aquí tienes una tabla de verdad para ilustrarlo:

| P | Q | P $\land$ Q | $\neg$(P $\land$ Q) | $\neg$P | $\neg$Q | $\neg$P $\lor$ $\neg$Q |
|---|---|---|---|---|---|---|
| V | V | V | F | F | F | F |
| V | F | F | V | F | V | V |
| F | V | F | V | V | F | V |
| F | F | F | V | V | V | V |
[Timestamp: 2026/04/10 10:51:29]