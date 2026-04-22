Algoritmo Porcentaje_sexos
//Variables de entrada
	Definir cantidadHombres, cantidadMujeres, resultadoPorcentajeMujeres, resultadoPorcentajeHombres Como Entero
	
	//
	Escribir "Ingrese la cantidad de hombres"
	Leer cantidadHombres;
	
	Escribir "Ingrese la cantidad de mujeres"
	Leer cantidadMujeres;
	
	resultadoPorcentajeMujeres <-  (cantidadMujeres / (cantidadHombres + cantidadMujeres)) * 100;
	resultadoPorcentajeHombres <-  (cantidadHombres / (cantidadHombres + cantidadMujeres)) * 100;
	
	Escribir "El porcentaje de mujeres en el curso es de: ", REDON(resultadoPorcentajeMujeres) "%" ;
	
	Escribir "El porcentaje de hombres en el curso es de: " REDON(resultadoPorcentajeHombres) "%";
	
	
	
	
	
	
FinAlgoritmo
