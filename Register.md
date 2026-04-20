Que es?
;;
En programación, un **registro** (struct/record) es un tipo de dato complejo que agrupa varios campos (variables) relacionados bajo un único nombre, como los datos de un "empleado" (nombre, ID, salario). También puede referirse a la palabra clave `register` para sugerir al compilador guardar variables en la CPU para acceso rápido, o a un **[registro de base de datos](https://www.google.com/search?q=registro+de+base+de+datos&sca_esv=da380046654dbbf2&sxsrf=AE3TifMAONLdeSZgPLC8-OBh0nxuEhcqmQ%3A1767642503680&ei=hxVcabemKZTW5OUPkN3coQE&ved=2ahUKEwjh-OLbovWRAxXpLLkGHVGeOWEQgK4QegQIARAC&uact=5&oq=Register+programcion&gs_lp=Egxnd3Mtd2l6LXNlcnAiFFJlZ2lzdGVyIHByb2dyYW1jaW9uMgcQIRigARgKMgUQIRifBTIFECEYnwUyBRAhGJ8FMgUQIRifBTIFECEYnwUyBRAhGJ8FMgUQIRifBTIFECEYnwUyBRAhGJ8FSKgdUOEJWOgbcAN4AZABAJgBpwGgAYkVqgEEMC4yMLgBA8gBAPgBAZgCF6ACqxbCAgoQABiwAxjWBBhHwgIEECMYJ8ICChAjGIAEGCcYigXCAgsQABiABBiRAhiKBcICBRAuGIAEwgILEC4YgAQY0QMYxwHCAgUQABiABMICEBAAGIAEGJECGIoFGEYY-QHCAgoQABiABBhDGIoFwgIqEAAYgAQYkQIYigUYRhj5ARiXBRiMBRjdBBhGGPkBGPQDGPUDGPYD2AEBwgIIEAAYgAQYywHCAgoQABiABBgKGMsBwgIKEAAYgAQYFBiHAsICBhAAGBYYHsICBRAhGKABmAMAiAYBkAYIugYGCAEQARgTkgcEMy4yMKAH0aMBsgcEMC4yMLgHmBbCBwowLjMuMTYuMy4xyAeEAYAIAA&sclient=gws-wiz-serp&mstk=AUtExfD4_Vti2gUPowzKP3tNcyGfuXgMABHWZ6fMLdEZB3MpobZxo2Z9J23AOKMmIGo1rPT2P3ZHNnHQ2BU__7HVQPVdC4mSm0LIEuu21aTYC0svyJsqIaorBgsOGdAQF4Y3R_Tj5-GLjut3H1M0zR8elRlbjt9HVfEQxJwWjXpfQzmKnrXE9TvKbADXOowMNWlo19eCU8ElRcmu2PaOUZ3bXQfnnhg4B5UMzM6f349DgWdISi8XgwTw0cBx183LPKqC2fv8vwBpQLxylSBCaY37Q2KJ&csui=3)** (fila) que contiene datos de una entidad. La elección depende del contexto: estructurar datos, optimizar rendimiento o manejar bases de datos/archivos. 
___
#### Registro como Estructura de Datos (Struct/Record)
- **Qué es:** Una forma de agrupar tipos de datos diferentes (enteros, cadenas, etc.) en una sola unidad.
- **Para qué sirve:** Organizar información sobre una entidad (ej. un alumno: nombre, edad, notas).
- **Ejemplo:** `struct Persona { string nombre; int edad; };`. 
#### Palabra Clave `register` (C/C++)
- **Qué es:** Un especificador de clase de almacenamiento que pide al compilador guardar una variable en un registro de la CPU para mayor velocidad.
- **Para qué sirve:** Optimizar el acceso a variables que se usan frecuentemente.
- **Importante:** Es una sugerencia; el compilador puede ignorarla. 
#### Registro en Bases de Datos
- **Qué es:** Una fila (o tupla) en una tabla, que contiene un conjunto completo de datos relacionados para una entidad única.
- **Ejemplo:** Una fila en una tabla de "Clientes" con datos de un cliente específico. 
1. Registro de Programa (Logs/Archivos)
- **Qué es:** Archivos o secciones que registran eventos y la ejecución de un programa.
- **Para qué sirve:** Depuración y auditoría.




#Tipos 