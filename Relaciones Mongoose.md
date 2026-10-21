

Basicamente para hacer una relacion hay que traer que poner al modelo como parametro en el esquema de el otro modelo, y si queres que sea una relacion de 1 a uno hay que definir que el parametro que sea trae sea unico
```js

tienda: {

	type: mongoose.Schema.Types.ObjectId,
	
	ref: 'Store',
	
	required: true,
	
	unique: true

}


```

