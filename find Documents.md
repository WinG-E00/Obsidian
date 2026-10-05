

Metodos para buscar documentso

## findOne()
```js

// sirve para traer un solo docmento en base a una clave valor especifico,
tambien se pueden usar query operators aqui
db.ParaPracticar.findOne({ "claveAEncontrar": "valor_a_encontrar" })

```

## findAndUpdate()
findAndUpdate obligatoriamente tiene dos documentso, y puede tener un tercero que es basicamente una opcion extra que le dice a la base de datos que hacer con el documento
```js

//Sirve para encontrar un documento especifico y actualizarlo
db.ParaPractiacar({ "nombre": "Raulsito" }, { $set: { nombre: "Gastoncito", SegundoNombreNuevo: "JosesitoDeodo" } },
//Tercer documento opcional, sirve para especificarle opciones de comportamiento a el findOne
{ })
//La sintaxis es simple, simplemente se pone el documento con la condicion y despues otro documento con un operador $set dentro de ese operador se pueden actualizar o agregar nuevos valores





```




Todas las opciones extra del documento extra
- **`returnDocument`** (o `new` en Mongoose): Devuelve el documento original (`"before"`) o el ya modificado (`"after"`).

```js

db.findOneAndUpdate( {"ClaveAEncontrar": "valor de la clave"}, { $set: {"nuevaClaveValorOValorViejo": "valorAactualizar"} }, { returnDocuemnt: "after" o "before" } )

// after va a servir para mostrar el documento con los datos actualizados, y before va a mostrar el documento con los resultados pasados, el que esta por defecto es before.

```



- **`upsert`**: Si es `true` y no encuentra coincidencias, crea un documento nuevo.
```js

db.findOneAndUpdate( {"ClaveAEncontrar": "valor de la clave"}, { $set: {"nuevaClaveValorOValorViejo": "valorAactualizar"} }, { upsert: true } )

//Aca va a crear un documento nuevo si no encuentra coincidencia
```


- **`sort`**: Ordena los resultados para elegir exactamente cuál es el "primer" documento a modificar.


```js

db.findOneAndUpdate( {"ClaveAEncontrar": "valor de la clave"}, { $set: {"nuevaClaveValorOValorViejo": "valorAactualizar"} }, { sort: { edad: 1 o -1 } } )
// El uno te devuelve edad de mayor a menor, y el -1 te devuelve de menor a mayor

 


```


- **`projection`**: Filtra qué campos quieres que te devuelva (ej. `{ nombre: 1 }`).
```js

db.ParaPractiacar({ "nombre": "Raulsito" }, { $set: { nombre: "Gastoncito", SegundoNombreNuevo: "JosesitoDeodo" } },

{ })


```


- **`arrayFilters`**: Define qué elementos específicos actualizar dentro de un arreglo.
    
- **`bypassDocumentValidation`**: Fuerza el guardado ignorando las reglas o esquemas de validación.
    
- **`collation`**: Reglas de idioma (permite ignorar acentos o mayúsculas al buscar).
    
- **`maxTimeMS`**: Límite de tiempo en milisegundos antes de cancelar la consulta.
    
- **`hint`**: Obliga a la base de datos a usar un índice específico para buscar.
    
- **`writeConcern`**: Nivel de garantía al guardar (útil si tienes varios servidores).
    
- **`let`**: Crea variables temporales para usarlas dentro de la actualización.



findOneDelete()

