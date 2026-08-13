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
[[juan], [Alberto], [Ignacio], ]

* /

```

pertenece a la libreria [[stdlib]] de kotlin