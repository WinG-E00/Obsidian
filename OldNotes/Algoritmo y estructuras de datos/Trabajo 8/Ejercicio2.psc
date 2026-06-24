Algoritmo Ejercicio2
	
	//variable de entrada
	Definir cantidadLluvia Como Real;
	
	//Definir variable acumuladora
	Definir sumaParaPromedio Como Entero;
	
	//variable contadora
	Definir variableContadora Como Entero;
	
	//Inicializacion de variables
	sumaParaPromedio <- 0;
	variableContadora <- 0;
	
	
	
	//Bucle
	Repetir 
		Escribir "Escribe la cantidad de lluvia, cuando esta sea en valor negativo el programa acaba";
		Leer cantidadLluvia;
		
		sumaParaPromedio <- sumaParaPromedio + cantidadLluvia;
		variableContadora <- variableContadora + 1;
		
		Si cantidadLluvia <= 0 Entonces
			variableContadora <- variableContadora - 1;
		FinSi
		
		
	Hasta Que cantidadLluvia <= 0;
	
	
	//Salida
	Si sumaParaPromedio > 0 Entonces
		Escribir "El promedio de lluvia es: " sumaParaPromedio / variableContadora;
	SiNo 
		Si sumaParaPromedio <= 0 Entonces
			Escribir "No se puede sacar el promedio de lluvia si no llovio";
		FinSi
		
	FinSi
	
	
	

	
	
	
	
	
	
FinAlgoritmo
