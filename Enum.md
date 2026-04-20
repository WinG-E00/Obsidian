Que es?
;;
El tipo de dato `enum` (enumeración) en programación es un tipo especial que permite definir un conjunto de **constantes nombradas y predefinidas**, mejorando la legibilidad y seguridad del código, ya que restringe los valores posibles a esa lista fija (ej. días de la semana, estados) en lugar de usar números o cadenas "mágicas". Se usa cuando se conocen todos los valores posibles y estos no suelen cambiar, haciendo el código más claro y menos propenso a errores.
___
Características y uso
___
- **Conjunto fijo de constantes:** Define una lista de identificadores simbólicos (ej. `LUNES`, `MARTES`) que representan valores específicos.
- **Legibilidad:** Reemplaza valores abstractos (como números) por nombres descriptivos, haciendo el código más fácil de entender y mantener.
- **Seguridad de tipos:** Garantiza que una variable solo pueda tomar uno de los valores definidos en la enumeración, previniendo errores de asignación.
- **Ejemplos comunes:** Días de la semana, meses, colores, estados de un proceso (activo, inactivo, pendiente), tipos de usuario.
- **Implementación:** Varía según el lenguaje (en Java y C# se declara con `enum`, en bases de datos como MySQL se define en la estructura de la tabla).
<!--SR:!2026-04-15,49,210-->


#Programacion_flashcard #Tipos 