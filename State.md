El state son los datos propios del componente que este guarda crea o modifica a lo largo del tiempo;


el state basicamente tiene una funcion llamada useState("valor Actual")

Que devuelve dos parametros

primero devuelve el valor actual

"valor Actual"
y despues 
function dispatchSetState() { ... }

esa funcion dispatchSetState()
es en lo que se convierte el 
setContador de esto por ejemplo
[ contador, setContador ] = useState(0)

y esto podes usarlo dentro de las funciones para personalizar la funcion para decirle como va se va a modificar exactamente el valor de contador

```jsx

function Home(){

const [contador, setContador] = useState(0)

function aumentarContador(valorcito){
	setContador( contador + valorcito)
}


return();

aca podes poner los jsx que quieras para ver como se modifica el valor de el contador


}
```

