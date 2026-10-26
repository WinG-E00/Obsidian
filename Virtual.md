El virtual se va a crear dentro de el archivo en donde no esta la referencia en tu schema


El virtual sirve basicamente para poder traer los parametros de un modelo que tiene referencias

Por ejemplo modelo habilitacion tiene referenciado a el modelo tienda, por lo que este podria hacer un populate y traer sus propiedades con el populate pero el modelo tienda no podria entonces por eso se crea un virtual dentro de el archivo donde se crea el modelo tienda
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




## Modelo tienda con el virtual

```js


const storeSchema = new Schema({

	name:{
	type: String,
	requiered: true,
	unique: true,
	},
	
	location: {
	type: String,
	requiered: true,
	},
	
	estado: {
	type: String,
	enum: ['Activo', 'Inactivo'],
	default: 'Activo'
	}
});

  
  

storeSchema.virtual('habilitacion', {
	ref: 'Habilitacion',
	localField: '_id',
	foreignField: 'tienda',
	justOne: true
})

storeSchema.set('toJSON', { virtuals: true });

  
export const StoreModel = model("Store", storeSchema);



```


