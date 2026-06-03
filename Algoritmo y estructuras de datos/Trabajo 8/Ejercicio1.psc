Algoritmo Ejercicio1
	
	//Variables de entrada
	Definir nombrePelicula Como Caracter;
	Definir minutosPelicula Como Entero;
	Definir cantidadPeliculas Como Entero;
	
	//Variables de salida
	Definir cantidadPeliculasQSuperan Como Entero;
	
	//variable contadora
	Definir variableContadora Como Entero;
	
	//Inicializacion  variables contadoras
	variableContadora <- 0;
	cantidadPeliculas <- 0;   
	cantidadPeliculasQSuperan <- 0;
	
	
	
	Escribir "Escribe la cantidad de peliculas";
	Leer cantidadPeliculas;
	
	
	Mientras ( variableContadora < cantidadPeliculas  )
		
		Escribir "Escriba el nombre de la pelicula";
		Leer nombrePelicula;
		
		Escribir "Escribir la duracion de la pelicula";
		Leer minutosPelicula;
		
		
		Si minutosPelicula > 60 Entonces
			cantidadPeliculasQSuperan <- cantidadPeliculasQSuperan + 1;
		FinSi
		
		variableContadora <- variableContadora + 1;
		
		
	FinMientras
	
	
	Escribir "La cantidad de peliculas que superan los 60 minutos son: ", cantidadPeliculasQSuperan ;
	
	
	
	
	
FinAlgoritmo
