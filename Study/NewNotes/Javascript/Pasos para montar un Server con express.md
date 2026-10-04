
## Iniciar server
```JS
//Inicar npm
npm init -y

// Instalar express
npm i express

// Primer paso iniciar servidor
import express from "express";
import { objeto o array } from "Ruta";

//dar una variable a express
const app = express();

//Para que inicie y entienda json
app.use(express.json());

//Esto seria en caso de que hayamos configurado un router
app.use("/api", personajesRouter)



// y esto inicia el server en el puerto que nosotros le pongamos

app.listen(3003, () => {
	console.log("Servidor corriendo en el puerto 3003")
});


```

## Creacion de routers y rotas

```JS
//primero importamos el Router de express
import { Router } from "express";

//
import {
	// Aca podemos importar midleweres osea funciones que  hagan algo 
} from "./miRuta"


//aca exportamos nuestro router con todas las rutas
export const personaRouter = Router();



// y Aca definimos las rutas que va a tener nuestro router
// que metodo vamos a utilizar, y que vamos a hacer con la informacion manejada por un midleware
personajerouter.get("/character", obtenerTodosLosPersonajes);

//En esta ruta lo que hace el coso es leer el paramotro que nosotros pongamos despues del :id osea por ejemplo yo puedo poner localhost:3000/api/characters/1
personajesRouter.get("/characters/:id", obtenerUnPersonaje)


//Aca lo que hace es tomar el json que es lanzado desde nuestro cliente osea con el metodo post
personajesRouter.post("/characters", crearUnPersonaje)


//El put en este caso sirve para actualizar algo
// y bueno como en este caso el midleware edita el personaje
//lo que haria put seria tomar el id variable de el /character/:id y lo leeria y a ese id le va a aplicar la funcion que edita igualmente la toma de valores se hace dentro de editar personajes, ahi hacemos las comparaciones y todo lo demas
personajesRouter.put("/character/:id", editarUnPersonaje)



// En este caso lo mismo este primero lee el id que pogas y despues ejecuta la funciono midleware con el metodo delete
PersonajesRouter.delete("/characters/:id", eliminarUnPersonaje);




```



## Creacion de middlewares

%%Los midlewares van a ser las funcionen que van a hacer algo con el json o con la info de la ruta o con el propio documento comparando con el json y editando o demas, tambien se pueden usar objetos variables y todo eso, es propiamente una funcion solo que es una funcion que recibe un (req, y un res) => {} , 

el req seria lo que llega de la ruta y bueno se puede utilizar o no dependiendo de el metodo

y el res seria lo que responde el servidor
%%
```JS
// Aca se importa un array con todos los personjes
import { personajes } from "../data/personajes.js";


//Aca se exporta el midleware que envia al res nuestro array en formato json
export const obtenerTodosLosPersonajes = (req, res) => {
  // comunica con la base de datos
  res.json(personajes);
};


//Aca se exporta una funcion que toma el req.params.id
//Despues utiliza el metodo find y lo que hace es tomar el valor de req.params.id y entonces ahi busca con el metodo find en nuestro array personajes un personaje.id que tenga el mismo valor que nuestro id de nuestro url  localhost:3003/api/characters/:id ahi toma el valor de id que le pongamos

export const obtenerUnPersonajePorId = (req, res) => {
  // comunica con la base de datos
  const idPersonaje = Number(req.params.id);

  // buscas en la base de datos
  const personajeEncontrado = personajes.find((personaje) => {
    return personaje.id === idPersonaje;
  });
// Si el personaje encontrado es undefined se define como valor false, entonces ahi esta condicional lo convierte en verdadero y cuando un if es verdadero se ejecuta, este if se ejecuta cuando !personaje encontrado es undefined, osea que no existe en nuestra base de datos o nuestro array y bueno lo que hace es que en nuestro res.status(404).json simplemente devuelve el error 404 en formato json
  if (!personajeEncontrado) {
    return res.status(404).json({
      message: `Personaje con el id #${idPersonaje} no encontrado`,
    });
  }
  
  
 // y bueno en esta seccion seria lo que retorna nuestra funcion midlewere que luego sera utilizado en el metodo que nosotros le pusimos a nuestra ruta, get, put, push, delete,  
  return res.json({
    message: "Personaje encontrado",
    personajeEncontrado,
  });
};


///////////////////////////////////////////////////////////////////////////

//bueno aca lo que hace esta funcion midleware exportada es que
//Va a tomar las propiedades, name, species, gender, del req.body
export const crearUnPersonaje = (req, res) => {
  const { name, species, gender } = req.body;

  // validaciones lo que hace aca es que si el req.body de nuestro json que le enviemos esta vacio entonces la funcion midleware retorna un error 400 en formato json
  if (name === "") {
    return res.status(400).json({
      message: "El name no puede ser vacio",
    });
  }

//Aca esto lo que hace es crear el cuerpo de nuestro nuevo personaje y le asigna un 1 mas a el lengh de nuestro array, asi no se repite la info y uueno esto se haria unicamente cuando el if no se ejecuta, y bueno creo que lo que hace tambien es tomar el name, species, gender, que nosotros le enviemos en nuestro metodo post
  const newPersonaje = {
    id: personajes.length + 1,
    name,
    species,
    gender,
  };


// Y bueno por aca lo que va a haer es hacer push a nuestro array, con el nuevo personaje
  personajes.push(newPersonaje);

  // console.log(name);
  // console.log(species);
  // console.log(gender);

  res.status(201).json({
    message: "Personaje creado correctamente",
    newPersonaje,
  });
};

export const editarUnPersonaje = (req, res) => {
  const idPersonaje = Number(req.params.id);
  const { name, gender } = req.body;

  const personajeEncontrado = personajes.findIndex(
    (personaje) => personaje.id === idPersonaje,
  );

  if (personajeEncontrado === -1) {
    return res.status(404).json({
      message: "Personaje no encontrado",
    });
  }

  personajes[personajeEncontrado] = {
    ...personajes[personajeEncontrado],
    name,
    gender,
  };

  res.status(200).json({
    message: "Personaje editado correctamente",
  });
};

export const eliminarUnPersonaje = (req, res) => {
  const idPersonaje = Number(req.params.id);

  const personajeEncontrado = personajes.findIndex(
    (personaje) => personaje.id === idPersonaje,
  );

  if (personajeEncontrado === -1) {
    return res.status(404).json({
      message: "Personaje no encontrado",
    });
  }

  personajes.splice(personajeEncontrado, 1);

  return res.status(200).json({
    message: "Personaje eliminado correctamente",
  });
};



```






