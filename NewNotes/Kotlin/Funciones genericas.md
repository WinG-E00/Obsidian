Que se supone que son las funciones genericas?
;;
Una funcion s



```kotlin

fun <K, V> buildMutableMap(build: HashMap<K, V>.() -> Unit): Map<K, V> {
    val map = HashMap<K, V>()
    map.build()
    return map
}




fun <K,V

```

