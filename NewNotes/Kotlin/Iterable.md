Que contiene la interfaz iterable y que se puede hacer con ella?
;;
La interface de Iterable por dentro solo una funcion que se puede editar para que funcione en cualquier clase

```kotlin
public interface Iterable<out T> {
	public operator fun iterator(): Iterator<T>
}
```


Para hacer que una [[Tipos de clases de kotlin]] clase de kotlin se pueda iterar primero tenemos que formar a la clase para que pueda iterar sobre un tipo de dato que le indiquemos adentro de el interfaz Iterable<>

Al momento de decirle a una clase que se va a poder iterar
```kotlin
data class Cancion(val nombre: String, val artista: String, val duracionEnMinutos: Double)


// creacion de lista de canciones manualmente
val misCanciones = listOf(
	Cancion("Sonic Hero", "Sega", 5.4),
	Cancion("Sonic Mania", "Sega", 3.5),
	Cancion("Green Hill", "Sega", 2.5)
)


class ListaSega(val segaDisk: "String", val listaCanciones: )



```



