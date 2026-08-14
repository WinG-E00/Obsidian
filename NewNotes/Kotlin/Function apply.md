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


/*
Aca basicamente lo que haces es que le decis a la funcion que reciba cualquier tipo de dato <T> y que bueno a ese dato que reciba le va a agregar una funcion con la forma de funcion extensions luego de eso(f) seria la funcion (f: T.() -> Unit) despues en esto hay que poner la funcion que queramos como extension y bueno esta puede ser cualquier funcion que queramos

y bueno como ante ultimo le decimos a nuestra funcion principal que retornara de nuevo ese cualquier tipo de valor que entre : T {
}
despues adentro simplemente eats ejecutando la funcion que creaste 
*/
```


[[Extension functions]]