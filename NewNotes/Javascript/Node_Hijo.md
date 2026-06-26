

## Propiedades
[[parentNode]]: Devuelve el nodo padre directo (puede ser un elemento, el documento o un fragmento).

[[parentElement]]: Devuelve el nodo padre, pero solo si es un elemento HTML; si es otro tipo de nodo, devuelve `null`.

[[childNodes]]: Devuelve una colección con todos los nodos hijos, incluyendo etiquetas, texto y comentarios.

[[firstChild]]: Devuelve el primer nodo hijo (sea del tipo que sea).

[[lastChild]]: Devuelve el último nodo hijo.

[[previousSibling]]: Devuelve el nodo hermano anterior en el mismo nivel.

[[nextSibling]]: Devuelve el siguiente nodo hermano en el mismo nivel.

[[nodeType]]: Devuelve un número que representa el tipo de nodo (1 para elemento, 3 para texto, etc.).

[[nodeName]]: Devuelve el nombre del nodo en mayúsculas (ej: "DIV" o "#text").

[[nodeValue]]: Devuelve o define el valor del nodo (solo útil en nodos de texto, comentarios o atributos).

[[textContent]]: Devuelve o cambia el contenido de texto limpio de este nodo y todos sus descendientes.

[[isConnected]]: Devuelve un booleano que indica si el nodo está conectado actualmente al DOM del navegador.

[[ownerDocument]]: Devuelve el objeto `document` principal al que pertenece el nodo.

## Métodos
[[appendChild()]]: Agrega un nodo hijo al final de la lista de hijos de este nodo.

[[insertBefore()]]: Inserta un nodo hijo justo antes de otro nodo hijo que uses como referencia.

[[removeChild()]]: Elimina un nodo hijo específico de este elemento.

[[replaceChild()]]: Reemplaza un nodo hijo antiguo por uno nuevo.

[[cloneNode()]]: Clona el nodo; si le pasas `true`, clona también a todos sus hijos.

[[hasChildNodes()]]: Devuelve un booleano indicando si el nodo tiene algún hijo.

[[contains()]]: Devuelve verdadero si el nodo pasado por parámetro es un descendiente o él mismo.

[[isEqualNode()]]: Compara si dos nodos tienen exactamente la misma estructura y contenido.

[[isSameNode()]]: Compara si ambos nodos son exactamente el mismo objeto en memoria.

[[compareDocumentPosition()]]: Compara la posición de este nodo con respecto a otro en el documento.

[[normalize()]]: Une nodos de texto adyacentes y elimina los nodos de texto vacíos dentro de este nodo.