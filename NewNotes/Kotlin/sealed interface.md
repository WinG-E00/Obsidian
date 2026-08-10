Como se usa sealed interface
;;
```kotlin
//Para usar sealed interface simplemente hay que poner un sealed adelante del interface

sealed interface Comida

class comidaChina(val sushi: String) : Comida
class comidaEspañola(val sushi: String) : Comida


/*/El `when` se vuelve EXHAUSTIVO (Su mayor ventaja)
Como el compilador sabe exactamente que las **únicas** variantes posibles son `Hola` y `Adios`, podés usar `when` como expresión y **no necesitás poner una rama `else`**:

Kotlin


fun obtenerMensaje(entrada: Saludar): String = when (entrada) {
    is Hola  -> "Te dijeron: ${entrada.saludo}"
    is Adios -> "Se fueron y dejaron la clave: ${entrada.despedida}"
    // ¡No hace falta 'else'! El compilador sabe que no existe otra opción.
}


```