

En kotlin podes iterar sobre los siguientes elementos
[[Colecciones Kotline]]
List 
MutableList
ArrayList

Sobre [[Conjuntos]]

Sobre [[rangos]]

Sobre vistas de mapas, en si no se puede iterar sobre solo los mapas pero si sobre sus componentes principales [[Maps]]

Arreglos

[[Clases personalizadas]]



```kotlin
public interface Iterable<out T> {
	public operator fun iterator(): Iterator<T>
}


```