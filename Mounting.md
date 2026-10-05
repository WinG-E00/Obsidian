La fase de vida de mounting es sencilla

1. Inicializacion de estadosPrimero  react inicializa los estados por defecto del componente osea los useStates que hayas creado dentro de tu componente
2. Renderizado: Despues react agarra y lee lo que pusiste en tu return jsx para poder insertarlo en el dom y renderizarl
3. Insercion en el DOM: React lee todo lo que se puso en el return y como se configuro y lo inserta en el dom para que se muestre
4. **Ejecución de Efectos (`useEffect`):** Inmediatamente después de que el componente ya es visible en la pantalla, React ejecuta el código que hayas puesto dentro de `useEffect` para inicializaciones secundarias.