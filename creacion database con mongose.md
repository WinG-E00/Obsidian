## Conexion a la base de datos con mongoose

Para conectar a la base de datos de mongo con mongoose la conexion es muy sencilla, simplemente hay que usar un metodo llamado mongoose.connect(URI)
```js

import mongoose from "mongoose";
import "dotenv/config";

const URI = process.env.URI_MONGODBATLAS
const startDB = async () => {

  

try {
	await mongoose.connect(URI);
	console.log("Se conecto correctamente a la base de datos de mongodb")
}catch(err){
	console.log('Hubo un error al intentar conectar a la base de datos de 
	mongodb')
}

};

export default startDB;
```


esta conexion podemos crearla dentro de una funcinon asincrona y luego importarla en la [[Study/Roadmaps/server/server explanation/App|App]] para se inicie ahi