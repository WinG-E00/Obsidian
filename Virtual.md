El virtual se va a crear dentro de el archivo en donde no esta la referencia en tu schema


El virtual sirve basicamente para poder traer los parametros de un modelo que tiene referencias

Por ejemplo modelo habilitacion 
```js
const habilitacionSchema = new Schema({

	numero:{
	type: Number,
	required: true,
	unique: true
	},
	
	actividad: {
	type: String ,
	required: true,
	unique: true,
	},
	
	vigencia: {
	fechaEmision: {
	type: Date,
	required: true
	},
	
	fechaVencimiento: {
	type: Date,
	required: true
	}
	
	},
	
	// Relacion de uno a uno con la tienda
	tienda: {
	type: Schema.Types.ObjectId,
	ref: 'Store',
	required: true,
	unique: true
	}
	
	  
	  

});

```