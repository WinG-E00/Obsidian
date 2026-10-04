Ejemplo de include trayendo atributos
;;
```js



const modelo = sequelize.define('modelo', {

	id: {
		type: DataTypes.INTEGER
	},
	
	include: [{
		model: modelo2,
		as: 'elmodelo2',
		
		attributes: ['id', 'nombre']
		
		
	
	}]

})




```