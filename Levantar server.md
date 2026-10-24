Para levantar el server existe un metodo llamado app.listen() estos serian los parametros que pide

```js

app.liste(PORT, async () => {
	
	try {
		startDB()	
	
	}catch(err){
	
	}
	
})
```


en donde startDB seria simplemente una funcion que conecta con la base de datos que tenemos y 