Que contiene la interfaz iterable y que se puede hacer con ella?
;;
La interface de Iterable por dentro solo una funcion que se puede editar para que funcione en cualquier clase

```kotlin
public interface Iterable<out T> {
	public operator fun iterator(): Iterator<T>
}
```


Para hacer que una [[Tipos de clases de kotlin]] clase de kotlin se pueda iterar primero tenemos que formar a la clase para que pueda iterar sobre un tipo de dato que le indiquemos adentro de el interfaz Iterable<Tipode dato que devuelve el iteratdor>

Al momento de decirle a una clase que se va a poder iterar


