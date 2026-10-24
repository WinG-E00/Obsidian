Para levantar el server existe un metodo llamado app.listen() estos serian los parametros que pide

```js

app.liste(PORT, async () => {
	
	try {
		startDB()	
	
	}catch(err){
		console.log(err)
	}
	
})
```


en donde startDB seria simplemente una funcion que conecta con la base de datos que tenemos y en caso de que haya un error se procesa en el catch para que muestre por consola el error.