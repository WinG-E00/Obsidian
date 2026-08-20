Como es la estructura del [[NewNotes/Sequelize/Modelo|Modelo]]
;;
```js


const NombreDelModelo = sequelize.define('NombreDelModelo,{
	
	id: {
		propieda: tipo_propiedad,
		propiedad2: tipo2,
	},
	atributo2: {
		atributoxd: elatributo,
		atributoasdasd: elotroatributo
	}
	
	
	include: [
		model: User,
		as: 'usuarios'
	]
	
	
	
});


```

Siento el unico parametro obligatorio el nombre del modelo que quiero incluir
y como lo vamos a llamar con el parametro as
Como usar el [[include]] dentro del modelo?
;;


