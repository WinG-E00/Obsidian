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


