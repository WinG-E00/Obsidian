Normalmente una funcion el resultado que devuelve esta entre los corchetes {}

Bueno en kotline se pueden crear funciones de expresion unica en el que las funciones que transforman un solo dato se pueden abreviar con un signo de igualdad
```Kotlin
fun NombreFuncion(): String = "OK"
```


Las funciones de kotline tienen la capacidad de realizar una inferencia para deducir el tipo de dato que tiene tu funcion y asi al compilar le dice al programa que tipo de dato tendra la funcion en base a el codigo que escribiste
```Kotlin
fun Saludar(hola: String) = hola + "OK";

// Por lo que esto se puede escribir de dos formas
fun sumar(numero1: Int) = numero1 + 15;

//Un detalle es que a las funciones s
fun sumar(numero1:Int): Int = numero1 + 15;

```




#Funcion 

[[Funciones Kotline]]
