Que contiene la interfaz iterable y que se puede hacer con ella?
;;
La interface de Iterable por dentro solo una funcion que se puede editar para que funcione en cualquier clase

```kotlin
public interface Iterable<out T> {
	public operator fun iterator(): Iterator<T>
}
```


Para hacer que una [[Tipos ]]