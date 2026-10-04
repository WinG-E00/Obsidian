Basicamente los triple quoted strings te permiten escribir un string pero que sea multilinea
Ademas tiene sus propios metodos como .trimMargin("#") que te permite borrar todo el espacio en blanco que hay antes del # y tambien el # o el simbolo que le indiques.

```kotlin
const val question = "life, the universe, and everything"
const val answer = 42

val tripleQuotedString = """
    #question = "$question"
    #answer = $answer""".trimMargin("#")

fun main() {
    println(tripleQuotedString)
}

```