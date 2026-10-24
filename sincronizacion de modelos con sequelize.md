Para iniciar la conexion de la base de datos y que dentro de la base de datos se creen todos los modelos y relaciones que creamos hay que importar todos los modelos y relaciones en nuestro archivo y luego usar los metodos correspondientes para conectar y sincronizar la base de datos que se veria de la siguiente forma



```js

import sequelize from './database.js'

//Aca necesito importar los modelos para la funcion que hace el sync de la base de datos
import User from '../models/user.model.js';
import Tag from '../models/tag.model.js';
import Profile from '../models/profile.model.js';
import Article from '../models/article.model.js';
import ArticleTag from '../models/articleTag.model.js';
import '../models/relations.js'


export async function initModels() {
try {

	// aca se usa el metodo para conectar la base de datos
	await sequelize.authenticate();
	console.log('DB connected');

	//Sincronizacion de todos los modelos de la base de datos
	await sequelize.sync({ force: true }); //Force true para mi produccion.

//Force true lo que hace es que al sincronizar los modelos te borra todos los datos que hayas cuardados y se creen de nuevo las tablas pero vacias si no queres que haga eso se quitan esos parametros


console.log('Modelos sincronizados');
  
} catch (error) {

console.log('Hubo un error al cargar los modelos y sincronizar la base de datos', error);
}

  

}



``` 


Despues esta funcion podes exportarla a 