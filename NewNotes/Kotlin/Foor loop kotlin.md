

En kotlin podes iterar sobre cualquier 

```kotlin
public interface Iterable<out T> {
	public operator fun iterator(): Iterator<T>
}


```