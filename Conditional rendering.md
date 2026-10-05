Esto es basicamente decirle a tu componente que renderize algo en base a cierta condicion

---

Por ejempo
Tenes

```jsx
export default function PropsPapuxd({nombre, edad, piel}){

const [edade, setEdade ] = useState(edad);

function incrementarEdad(){
	setEdade(edade + 1)
	console.log(edade)
};

  
return (
<div>

<p > Hola soy {nombre} </p>

<p > Tengo {edade} </p>

<p > Mi color de piel es {piel} </p>

  

<button onClick={incrementarEdad}>Incrementar Edad</button>

  
// Aca esta la parte importante, podes utilizar funciones ternarias para decirle que renderize en base a una condicion que tenga tu estado


{edade > 18? <p>Es un viejo de mierda</p> : <p>Le falta todavia para ser viejito xd</p>}


</div>

);

  

};
```
