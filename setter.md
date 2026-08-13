Que es un setter y como se usa?
;;

Bueno basicamente un setter es un configurador que hace basicamente que cuando alguien asigna un valor a la propiedad de esa interfaz o clase haga que se realize cualquier tipo de funcion que hayas configurado
```kotlin
class PropertyExample() {
    var counter = 0
    var propertyWithCounter: Int? = null
        set(v) {
            field = v
            counter++
        }
}


/*
de esta manera cuando alguien cree una clase con esas propiedades entonces el lenguaje automaticamente pasara la informacion que le hayas asingando a esa propiedad y entonces hara la funcion que le hayas puesto dentro del set
*/ 
```


21