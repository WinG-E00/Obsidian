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
Con los controladores se tiene la particularidad de que como pueden ser asincronos entonces estos pueden usar los metodos de modelos de sequelize o de mongoose, un ejemplo es este



```js

export const removeTagOnlyAuthor = async (req, res) => {
try {

const authorId = req.authUser.id;
const conexionARemover = req.params.id;

const ArticleTagEncontrado = await ArticleTag.findOne({
	where: {
	id: conexionARemover
}})

if (!ArticleTagEncontrado) {
return res.status(404).json({ message: "No se encontro el ArticleTag a eliminar" });
}

//Eliminar la conexion entre la etiqueta y el articulo
await ArticleTagEncontrado.destroy();

} catch (error) {
	return res.status(500).json({ message: "Hubo un error al intentar eliminar el ArticleTag", error })
}

  
  

};


```

