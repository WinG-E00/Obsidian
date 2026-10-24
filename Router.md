En este apartados veremos la introduccion de el router

## Concepto
Simplemente va a ser el que resive las peticiones http y este ya viene configurado en express nosotros tenemos simplemente que llamarlo para poder usarlo

```js
import { Router } from "express" 

// para despues asignarolo en una constante que sera la que nos permitira usar todos sus metodos

const router = Router(); 

```


## Metodos

```js


//metodos operaciones crud
router.post('/ruta', validador ,controlador);

router.get('/ruta', controlador);

router.put('/ruta', controlador);

router.delete('/ruta', controlador)

```