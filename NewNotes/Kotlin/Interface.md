Interface y smart Cast
;;
[[Smart cast]]
```kotlin
//En kotlin existe algo llamado interface esta te permite crear una especie de entrada de tipo de datos y que al asignar a la entradad de cualquier funcion, esta pueda realizar una o otra accion dependiendo del tipo de datoç


interface Saludar 
class Hola(val saludo: String) : Saludar 
class Adios(val despedida: Int) : Saludar

fun procesarSaludo(entrada: Saludar){
	when (entrada) {
		is saludo -> { printIn("Saluda ${entrada}") }
		is despedida -> { println(entrada.despedida + 1) }
	}
}
```



