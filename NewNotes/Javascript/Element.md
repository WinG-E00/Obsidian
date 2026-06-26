## Propiedades

[[attributes]]: Devuelve una colección viva (`NamedNodeMap`) de todos los atributos configurados en el elemento.

[[classList]]: Devuelve una colección (`DOMTokenList`) de las clases de tipo CSS del elemento, permitiendo usar métodos como `.add()`, `.remove()` o `.toggle()`.

[[className]]: Devuelve o establece el valor del atributo `class` como una simple cadena de texto.

[[id]]: Devuelve o establece el valor del atributo `id` del elemento.

[[tagName]]: Devuelve el nombre de la etiqueta del elemento en mayúsculas (ej: `"DIV"`, `"SPAN"`). A diferencia de `nodeName`, solo aplica a elementos.

[[children]]: Devuelve una colección viva (`HTMLCollection`) que contiene solo los nodos hijos que son etiquetas (ignora texto y comentarios).

[[firstElementChild]]: Devuelve el primer nodo hijo que sea un elemento HTML.

[[lastElementChild]]: Devuelve el último nodo hijo que sea un elemento HTML.

[[previousElementSibling]]: Devuelve el elemento hermano anterior en el mismo nivel.

[[nextElementSibling]]: Devuelve el siguiente elemento hermano en el mismo nivel.

[[childElementCount]]: Devuelve el número de elementos hijos que tiene este elemento.

[[innerHTML]]: Devuelve o establece el marcado HTML contenido dentro del elemento.

[[outerHTML]]: Devuelve o establece el fragmento HTML que representa al propio elemento y a sus hijos.

[[clientHeight]]: Devuelve la altura interna de un elemento en píxeles, incluyendo el padding pero no el scrollbar, borde ni margen.

[[clientWidth]]: Devuelve el ancho interno de un elemento en píxeles, incluyendo el padding.

[[clientTop]]: Devuelve el ancho del borde superior de un elemento en píxeles.

[[clientLeft]]: Devuelve el ancho del borde izquierdo de un elemento en píxeles.

[[scrollHeight]]: Devuelve la altura total del contenido de un elemento, incluyendo el contenido no visible debido al scroll.

[[scrollWidth]]: Devuelve el ancho total del contenido de un elemento, incluyendo el contenido no visible.

[[scrollTop]]: Devuelve o establece el número de píxeles que el contenido de un elemento se ha desplazado verticalmente.

[[scrollLeft]]: Devuelve o establece el número de píxeles que el contenido de un elemento se ha desplazado horizontalmente.


## METODOS
[[getAttribute()]]: Devuelve el valor del atributo especificado en el elemento; si no existe, devuelve `null`.

[[setAttribute()]]: Establece o actualiza el valor de un atributo en el elemento.

[[removeAttribute()]]: Elimina el atributo especificado del elemento.

[[hasAttribute()]]: Devuelve un booleano indicando si el elemento tiene el atributo especificado.

[[hasAttributes()]]: Devuelve un booleano indicando si el elemento tiene algún atributo configurado.

[[getAttributeNames()]]: Devuelve un array con los nombres de todos los atributos del elemento.

[[querySelector()]]: Devuelve el primer elemento descendiente que coincida con el selector CSS especificado.

[[querySelectorAll()]]: Devuelve una lista estática (`NodeList`) de todos los elementos descendientes que coincidan con el selector CSS.

[[getElementsByTagName()]]: Devuelve una lista viva de elementos descendientes que tengan el nombre de etiqueta especificado.

[[getElementsByClassName()]]: Devuelve una lista viva de elementos descendientes que tengan las clases CSS especificadas.

[[closest()]]: Busca y devuelve el ancestro más cercano (hacia arriba en el árbol, incluyéndose a sí mismo) que coincida con el selector CSS.

[[matches()]]: Devuelve un booleano indicando si el elemento coincidiría con el selector CSS especificado.

[[insertAdjacentElement()]]: Inserta un elemento en una posición específica respecto al elemento actual (`beforebegin`, `afterbegin`, `beforeend`, `afterend`).

[[insertAdjacentHTML()]]: Inserta un fragmento de texto HTML en una posición específica respecto al elemento actual.

[[insertAdjacentText()]]: Inserta texto plano en una posición específica respecto al elemento actual.

[[getBoundingClientRect()]]: Devuelve un objeto con el tamaño del elemento y su posición relativa respecto a la ventana del navegador (viewport).

[[scrollIntoView()]]: Desplaza la pantalla del navegador para que el elemento sea visible para el usuario.

[[remove()]]: Elimina directamente al elemento del árbol del DOM al que pertenece (sin necesidad de llamar al padre).

[[requestFullscreen()]]: Solicita al navegador poner el elemento en modo pantalla completa.

[[toggleAttribute()]]: Activa o desactiva un atributo booleano (lo añade si no existe, lo quita si ya existe).