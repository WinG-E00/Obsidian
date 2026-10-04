
# Flujo de Trabajo: Diseño Front-End con Impeccable

```mermaid
graph TD
    %% Punto de Partida
    Start([Inicio: Proyecto Vite + React]) --> F1

    %% Fase 1: Estructura y Lógica
    subgraph Fase 1: Fundamentos y Estructura
        F1[Definir Layout Base] --> F1a(CSS Grid / Flexbox)
        F1a --> F1b(Aplicar 'Modo Rayos X')
        F1b --> F1c(Validar Modelo de Cajas y Proporciones)
    end

    F1c --> F2

    %% Fase 2: Jerarquía y Tipografía
    subgraph Fase 2: Jerarquía Visual
        F2[Estructurar Contenido] --> F2a(Aplicar Escalas Matemáticas de Fuentes)
        F2a --> F2b(Definir Pesos Tipográficos)
        F2b --> F2c(Asignar Espacios en Blanco / Whitespace)
    end

    F2c --> F3

    %% Fase 3: Color y Contraste
    subgraph Fase 3: Teoría del Color Aplicada
        F3[Definir Paleta] --> F3a(Configurar Variables CSS / HSL)
        F3a --> F3b(Separar Colores de Acción y Superficies)
        F3b --> F3c{¿Pasa validación WCAG?}
        F3c -- No --> F3a
        F3c -- Sí --> F4
    end

    %% Fase 4: La Capa de Asombro
    subgraph Fase 4: Interacciones y Espacio 3D
        F4[Añadir Dinamismo] --> F4a(Microinteracciones de Estado en React)
        F4a --> F4b(Integración WebGL / React Three Fiber)
        F4b --> F4c(Manejo del Espacio Cartesiano X, Y, Z)
    end

    F4c --> End([Interfaz Front-End Increíble])
    
    %% Bucle de mejora continua
    End -.->|Iteración y Refinamiento| F1