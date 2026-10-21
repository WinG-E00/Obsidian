

Basicamente para hacer una relacion hay que traer que poner al modelo como parametro 
```js

tienda: {

	type: mongoose.Schema.Types.ObjectId,
	
	ref: 'Store',
	
	required: true,
	
	unique: true

}


```