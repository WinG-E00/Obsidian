Que es el req, el req basicamente es la informacion que trae consigo cualquier peticion [[CRUD]]


Y bueno esta son las propiedades del req
#### Propiedades del req
```javascript
// Esta seria la estructura de cualquier peticion req
{
  "method": "PUT",
  "url": "/empleados/450?departamento=ventas",
  "ip": "192.168.0.15",
  
  "params": {
    "id": "450"
  },
  
  "query": {
    "departamento": "ventas"
  },
  
  "body": {
    "precio": 5000,
    "estado": "activo"
  },
  
  "headers": {
    "host": "localhost:3000",
    "user-agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64)...",
    "content-type": "application/json",
    "authorization": "Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6Ik..."
  }
}
``` 


Lo bueno que tiene esto es que basicamente el req al comportarse como un objeto podemos acceder a sus propiedades mediante el punto entonces puedes acceder a cualquier propiedad de el req de esta manera dentro de tu controlador


req.body.precio y esto te mostrara el precio de el json que mandaste en la visita....

