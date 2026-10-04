Algoritmo Ejercicio3
	
	//Variables de entrada
	Definir asistencia, sexo Como Entero;
	
	//variable contadora
	Definir sexoCantidad,i, cantidadPresente, cantidadAusente Como Entero;
	
	sexoCantidad <- 0;
	cantidadPresente <- 0;
	cantidadAusente <- 0;
	
	//Variable para la cantidad de alumnos
	Definir cantidadDeAlumnosTotales Como Entero;
	
	//Suma para promedio
	Definir sumaParaPromedioAlumnos Como Entero;
	
	
	Escribir "Escribe la cantidad total de alumnos que cursan el salon";
	Leer cantidadDeAlumnosTotales;
	
	
	Para i <- 1 Hasta cantidadDeAlumnosTotales Con Paso 1 Hacer 
		
		Escribir "                                 ";
		Escribir "_____________________________________________________________________________";
		Escribir "escribe 1 si el alumno esta presente, escribe 0 si el alumno esta ausente";
		Leer asistencia;
		
		Escribir "Si el alumno es femenino escribe 1, si el alumno es masculino escribe 0";
		Leer sexo;
		
		//Suma a las variables contadoras dependiendo de si estan presente o no
		Si (asistencia = 1) Entonces
			
			cantidadPresente <- cantidadPresente + 1;
		SiNo
			Si (asistencia = 0) Entonces
				cantidadAusente <- cantidadAusente + 1;
			FinSi
			
		FinSi
	
		
		//Aumento variable contadora de sexo femenino
		Si sexo = 1 Y asistencia = 1 Entonces
			sexoCantidad <- sexoCantidad + 1;
		SiNo
			Si sexo = 0 Entonces
				sexoCantidad <- sexoCantidad;
			FinSi
		FinSi
		
		Escribir sexoCantidad;
		
	FinPara
	
	
	Escribir "El porcentaje del total de presentes es:", (100 * cantidadPresente) / (cantidadPresente + cantidadAusente)    ;
	Escribir "El porcentaje de presentes femenino es:" (100 * sexoCantidad) / cantidadPresente;
	
	
FinAlgoritmo
