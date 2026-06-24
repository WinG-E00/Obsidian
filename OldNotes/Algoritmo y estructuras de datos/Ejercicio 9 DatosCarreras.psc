//Realizar un algoritmo que permita la carga de algunos datos de las 2 carreras que se dictan en
//el instituto (nombre, duración, área, cantidad de materias, presupuesto, año) con
//instrucciones declarativas, y posteriormente despliegue sus nombres y presupuesto. Considere
//que tanto la duración como el presupuesto de la segunda carrera son el cuádruple que la
//primera, y que la cantidad de alumnos en la segunda aumenta un 30% respecto a la primera.
// o muestre en pantalla todos los datos ordenadamente.


// Duracion presupuesto, cantidad de alumnos

Algoritmo DatosCarreras
	
	//Variables de entrada carrera1
	Definir nombre1,area1 Como Caracter
	Definir duracion1, cantidadDeMaterias1,cantidadAlumnos1 Como Entero
	Definir presupuesto1 Como Real
	//Variables de entrada  y salida carrera2
	Definir nombre2,area2 Como Caracter
	Definir duracion2, cantidadDeMaterias2, cantidadAlumnos2 Como Entero
	Definir presupuesto2 Como Real
	

	
	
	//Datos de entrada carrera 1
	Escribir "Escribe el nombre de la carrera";
	Leer nombre1;
	
	Escribir "Escribe el area de la carrera";
	Leer area1;
	
	Escribir "Escribe la cantidad de alumnos";
	Leer cantidadAlumnos1;
	
	Escribir "Escribe la duracion de la carrera";
	Leer duracion1;
	
	Escribir "Escribe la cantidad de materias";
	Leer cantidadDeMaterias1;
	
	Escribir "Escribe el presupuesto de la carrera";
	Leer presupuesto1
	
	//
	
	//Datos de entrada carrera 2
	Escribir "Escribe el nombre de la segunda carrera";
	Leer nombre2;
	
	Escribir "Escribe el area de la segunda carrera";
	Leer area2;
	
	Escribir "Escribe la cantidad de materias";
	Leer cantidadDeMaterias2;
	
	
	//Redefinicion de variables
	duracion2 <- duracion1 * 4 ;
	presupuesto2 <- presupuesto1 * 4;
	cantidadAlumnos2 <- ((cantidadAlumnos1 / 100) * 30) + cantidadAlumnos1;
	
	
	
	//Salida de datos
	Escribir "La primera carrera se llama: " nombre1;
	Escribir "La primera carrera tiene el area de: " area1;
	Escribir "/////////////////////////////////////////////";
	Escribir "La primera carrera tiene esta cantidad de alumnos: ", cantidadAlumnos1;
	Escribir "La primera carrera tiene esta duracion: " duracion1;
	Escribir "La primera carrera tiene esta cantidad de manterias: ", cantidadDeMaterias1;
	
	Escribir "El presupuesto de la primera carrera es de: ", presupuesto1;
	
	Escribir "/////////////////////////////////////////////";
	// Carrera 2
	Escribir "La segunda carrera se llama: ", nombre2;
	Escribir "La segunda carrera tiene el area de: ", area2;
	Escribir "La cantidad de materias de la segunda carrera es de: ", cantidadDeMaterias2;
	Escribir "/////////////////////////////////////////////";
	Escribir "la duracion de la segunda carrera es de: ", duracion2;
	Escribir "El presupuesto de la segunda carrera es: ", presupuesto2;
	Escribir "La cantidad de alumnos de la segunda carrera es de: ", cantidadAlumnos2;
	
	
	
	
FinAlgoritmo
