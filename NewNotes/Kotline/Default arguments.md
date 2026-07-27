
Imagina que tenes una funcion al llamarla sio si tendrias que definir los valores por que si no no te dejaria usarla

```kotlin
fun foo(name: String, number: Int, toUpperCase: Boolean) = 
	(if(toUpperCase == true) name.uppercase() else name ) + " $number"
	


// No te dejaria	
fun useFoo() = listOf(

    foo("a"),
    foo("b", number = 1),
    foo("c", toUpperCase = true),
    foo(name = "d", number = 2, toUpperCase = true)

)

```

```kotlin

```
