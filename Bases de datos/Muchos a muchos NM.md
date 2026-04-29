Explicación
;;
Es la más compleja porque **no se puede crear directamente** entre dos tablas. Necesitas una tercera tabla "puente" o "intermedia".
___
- **El Concepto:** Muchos elementos de "A" se relacionan con muchos de "B".
- **Ejemplo Real:** **Estudiantes y Cursos**.
    - Un estudiante se inscribe en 5 cursos.
    - Un curso tiene 40 estudiantes.
- **Cómo se implementa (La Tabla Intermedia):**
    Creas una tabla llamada `Inscripciones`. Esta tabla solo tiene dos columnas principales: `id_estudiante` e `id_curso`.
    - Si el Estudiante 1 se apunta al Curso A, creas una fila: `(1, A)`.
    - Si el Estudiante 1 se apunta al Curso B, creas otra: `(1, B)`.
    - Si el Estudiante 2 se apunta al Curso A, creas: `(2, A)`.
<!--SR:!2026-05-01,2,170-->

#baseDeDatos #tipos 