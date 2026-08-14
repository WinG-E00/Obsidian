que es?
;;
Un hashMap es un tipo de clase que guarda cosas con clave valor

```kotlin

val hashemape = HashMap<String, Int>()


fun <K, V> buildMutableMap(build: HashMap<K, V>.() -> Unit): Map<K, V> {
    val map = HashMap<K, V>()
    map.build()
    return map
}





```