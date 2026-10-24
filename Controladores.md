Un controlador es una funcion que se ejecuta cuando la ruta recibe la peticion(request)


Esta seria su ejemplo
```js

router.post('/ruta', async (req, res) => { 
	try {
		
	
	}catch(err) {
	}
	
} )

// Entonces el controlador termina siendo simplemente esto

//Osea la funcinon asincrona que va a recivir como parametro un req, y un res
async (req, res) => { 
	try {
		
	
	}catch(err) {
	}
	
}

```


## Controladores para controlar la base de datos
Con los controladores se tiene la particularidad de que como pueden ser asincronos entonces estos pueden usar los metodos de 


