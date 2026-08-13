flat map es un metodo de la interfaz de [[Iterable]] y bueno basicamente funciona asi

```kotlin

/* En kotlin vos podes usar esto sobre una lista que contenga muchas propiedades que vengan de muchos objetos 

Si tenes varios objetos con una propiedad en comun

val juan: Persona{
	nombre: "Juan"
}

val Albertito: Persona = {
	nombre: "Alberto"
}

val Ignacio: Persona = {
	nombre: "Ignacio"
}

val Pedrito: Persona = {
	nombre: "pedro"


y queres meterlos a una lista


val Personas: ListOf<Persona> = [juan, Albertito, Ignacio, Pedrito]
y luego queres hacer un 

Personas.filter(persona::nombre)

esto te va a dar algo como
[[juan], [Alberto], [Ignacio], [pedro]]

como esto puede difiultar muchas cosas a la hora de programar podes hacer esto

Personas.filter(Persona::nombre).flatMap(Persona::nombre)




* /

```

pertenece a la libreria [[stdlib]] de kotlin

```kotlin

## Procesamiento de Colecciones en Kotlin: `map` vs `flatMap`

En Kotlin, cuando trabajas con una lista de objetos y quieres extraer o transformar sus propiedades, es fundamental entender qué herramienta usar para evitar estructuras de datos complejas.

#### 1. Definición de los objetos
Primero, definimos nuestra estructura usando una `data class` y creamos la lista:

```kotlin
data class Persona(val nombre: String, val telefonos: List<String>)

val juan = Persona("Juan", listOf("111", "222"))
val alberto = Persona("Alberto", listOf("333"))
val ignacio = Persona("Ignacio", listOf("444", "555"))

// Creamos la lista de personas
val personas = listOf(juan, alberto, ignacio)
````

2. Extraer una propiedad simple (`map`)

Si solo quieres obtener los nombres, usas **.map**. No se usa `filter`, ya que `filter` sirve para seleccionar elementos que cumplen una condición booleana, mientras que `map` transforma el objeto.

```
// INCORRECTO: personas.filter(Persona::nombre) -> filter pide un Boolean
// CORRECTO:
val nombres = personas.map(Persona::nombre) 
// Resultado: ["Juan", "Alberto", "Ignacio"] -> Una lista plana de Strings
```

3. El problema de las listas anidadas

El problema surge cuando quieres extraer una propiedad que **ya es una lista** (como los teléfonos). Si usas `.map`, obtendrás una **"lista de listas"**, lo que dificulta mucho la programación:

```
val listaDeListas = personas.map(Persona::telefonos)
// Resultado: [["111", "222"], ["333"], ["444", "555"]] 
// Tienes una List<List<String>>, difícil de procesar.
```

4. La solución: `flatMap`

Para obtener todos los elementos en un solo nivel (aplanados), usas **.flatMap**. Esta función transforma cada objeto en una lista y luego las une todas en una sola:

```
val todosLosTelefonos = personas.flatMap(Persona::telefonos)
// Resultado: ["111", "222", "333", "444", "555"]
// Ahora tienes una sola List<String> lista para usarse.
```

```