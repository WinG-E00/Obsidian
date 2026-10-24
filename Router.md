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

## Conectar el router con la app

Con `"type": "module"` en `package.json`, usamos `import` y `export`. Después de definir las rutas, exportamos el router:

```js
// routes.js
import { Router } from 'express';

const router = Router();

router.get('/usuarios', (req, res) => {
  res.send('Lista de usuarios');
});

export default router;
```

En el archivo principal lo importamos y lo registramos con `app.use(router)`:

```js
// app.js
import express from 'express';
import router from './routes.js';

const app = express();

app.use(router);

app.listen(3000);
```

**`app.use(router)` conecta las rutas del router con la aplicación.** En este ejemplo, permite acceder a `/usuarios`. Si usamos `app.use('/api', router)`, la ruta pasa a ser `/api/usuarios`.

Con módulos ES, incluí la extensión `.js` al importar archivos locales.
