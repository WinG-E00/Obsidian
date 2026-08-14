Funcion apply


Explicacion
;;
```kotlin


// En esta parte se le indica que la funcion puede aceptar cualquier tipo de parametro
fun <T> 

// 
fun <T> T.myApply(f: T.() -> Unit): T {
    f()
    return this
}


Aca basicamente lo que haces es que le decis a la funcion que reciba cualquier tipo de dato <T> 

```


[[Extension functions]]