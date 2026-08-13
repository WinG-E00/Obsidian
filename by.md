el by a la hora de crear [[Propiedades de las clases o interfaces en kotlin]] hace que al momento de 

```kotlin

val clase1(val datoqueentra: () -> ) {
	val lazybyvalue: Int by lazy(datoqueentra)

}


```



ejemplo claro de que es lo que haria
```kotlin
entonces ponele que yo tengo esta clase

  

val clase1(val datoqueentra: () -> ) {

  

val lazybyvalue: Int by lazy(datoqueentra)

}

  

y luego creo un objeto

  

objetoXD = clase1 {val a = 1 val b = 1 a+b}

  

entonces yo al momento de invocar

clase1.lazybyvalue ejecutara la funcion y luego no lo ejecuta mas pero si me muestra el valor que dio que seria 2


```
