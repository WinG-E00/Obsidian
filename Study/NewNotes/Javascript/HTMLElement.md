## Propiedades
[[style]]: Permite acceder y modificar directamente los estilos CSS en línea (inline) del elemento (ej: `elemento.style.color = 'red'`).

[[dataset]]: Da acceso a todos los atributos de datos personalizados (`data-*`) definidos en la etiqueta como un objeto de JavaScript.

[[tabIndex]]: Controla si el elemento puede recibir el foco del teclado y en qué orden mediante la tecla Tab.

[[title]]: Devuelve o establece el texto del "tooltip" (el mensaje flotante que aparece al dejar el cursor encima).

[[lang]]: Define o devuelve el idioma principal del contenido del elemento (atributo `lang`).

[[dir]]: Controla la dirección del texto del elemento (`ltr` para izquierda a derecha, `rtl` para derecha a izquierda).

[[hidden]]: Un booleano que, al ponerse en `true`, oculta visualmente el elemento en la página (equivalente a un comportamiento básico de CSS).

[[inert]]: Un booleano que, al activarse, hace que el navegador ignore por completo el elemento, bloqueando clicks, selección de texto y foco por teclado.

[[accessKey]]: Define una tecla de acceso rápido de teclado para activar o enfocar el elemento directamente.

[[contentEditable]]: Permite alternar si el usuario puede editar el contenido del texto directamente en la pantalla (`"true"`, `"false"` o `"inherit"`).

[[isContentEditable]]: Un booleano de solo lectura que te dice si el elemento es actualmente editable por el usuario.

[[offsetHeight]]: Devuelve la altura visual del elemento en píxeles, incluyendo el contenido, padding, bordes y la barra de scroll (si existe).

[[offsetWidth]]: Devuelve el ancho visual total del elemento en píxeles, incluyendo padding, bordes y scrollbars.

[[offsetTop]]: Devuelve la distancia en píxeles desde el borde superior de este elemento hasta el borde superior de su ancestro posicionado (`offsetParent`).

[[offsetLeft]]: Devuelve la distancia en píxeles desde el borde izquierdo de este elemento hasta el borde izquierdo de su `offsetParent`.

[[offsetParent]]: Devuelve el ancestro más cercano que tenga una posición CSS diferente a `static` (útil para calcular coordenadas de renderizado).


## Metodos
[[focus()]]: Coloca el foco del sistema en el elemento (ideal para inputs, botones o elementos con `tabIndex`).

[[blur()]]: Quita el foco del sistema del elemento actual.

[[click()]]: Simula un click del mouse programático sobre el elemento, disparando sus eventos asociados.

[[attachInternals()]]: Permite a los Elementos Web Personalizados (Custom Elements) integrarse de forma nativa con los formularios HTML, manejando estados de validación y accesibilidad.