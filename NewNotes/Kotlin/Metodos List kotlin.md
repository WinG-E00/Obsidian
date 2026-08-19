cuales son los metodos de List en kotlin
;;
uno de los metodos es .filter()
Como es su uso basico?
```Kotlin
val numeros = listOf(1, 8, 15, 24, 30)

// Filtrar números mayores a 10
val grandes = numeros.filter { it > 10 } 
// Resultado: [3-5]

numeros.filter {aqui va a el objeto que seria una referencia, it > y la condicion 10}

// Filtrar números pares
val pares = numeros.filter { it % 2 == 0 } 
// Resultado: [4-6]
```
<!--SR:!2026-08-22,3,250-->

filter pertenece a la libreria [[stdlib]]