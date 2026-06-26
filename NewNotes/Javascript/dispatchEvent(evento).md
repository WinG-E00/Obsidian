%%Esto lo que hace basicamente es disparar un evento desde el codigo, osea cuando javascript pase por esta parte de el codigo disparara un evento desde la linea por la que paso en el nodo que seleccionamos

node.dispatch(evento)
%%

```JS
// 1. Seleccionamos el elemento (que hereda de EventTarget)
const boton = document.querySelector('#miBoton');

// 2. Le ponemos un escuchador normal y corriente
boton.addEventListener('alertaModoOscuro', (e) => {
    alert(`¡Evento recibido! El tema actual es: ${e.detail.tema}`);
});

// 3. Creamos un evento personalizado (CustomEvent) con datos extra
const miEvento = new CustomEvent('alertaModoOscuro', {
    detail: { tema: 'dark' } // Pasamos info dentro de 'detail'
});

// 4. ¡Disparamos el evento manualmente!
boton.dispatchEvent(miEvento);


```