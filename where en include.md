Que es y como se usa??
;;
basicamente el where de sequelize es lo mismo que el [[OldNotes/Bases de datos/WHERE|WHERE]] de las bases de datos sql solo que en esta ocacion lo traes los parametros del modelo de sequelize, esto seria un ejemplo de como se veria.
```js

const modelito1 = sequelize.define('modelito1', {
	
	id: {
		type: DataType.INTEGER
	},
	
	include: [{
		model: modelito2,
		as: 'modelito2xd',
		
		attributes: [id, nombre],
		
	}]

})


```