Algoritmo Ejercicio4
		//Variables
		Definir numero1, numero2, numero3, compara1 Como Real;
		Definir dist1, dist2, dist3, distMinima Como Real;
		
		//Datos
		Escribir "Ingrese numero1:";
		Leer numero1;
		Escribir "Ingrese numero2:";
		Leer numero2;
		Escribir "Ingrese numero3:";
		Leer numero3;
		Escribir "Ingrese el valor a comparar (compara1):";
		Leer compara1;
		
		// Calcular distancias usando la función ABS (valor absoluto)
		dist1 <- ABS(numero1 - compara1);
		dist2 <- ABS(numero2 - compara1);
		dist3 <- ABS(numero3 - compara1);
		
		// Comparacion para ver cual es la distancia minima
		Si dist1 <= dist2 Y dist1 <= dist3 Entonces
			distMinima <- dist1;
		Sino 
			Si dist2 <= dist1 Y dist2 <= dist3 Entonces
				distMinima <- dist2;
			Sino
				distMinima <- dist3;
			FinSi
		FinSi
		
		
		
		
		Escribir "El valor mas proximo es";
		
		
		
		
		Si dist1 = distMinima Entonces
			Escribir numero1;
			
		SiNo
			Si dist2 = distMinima Entonces
				Escribir numero2;
				
			SiNo
				
				Si dist3 = distMinima Entonces
					Escribir numero3;
				FinSi
				
				
			FinSi
			
			
		FinSi
		
		
		
		
		
FinAlgoritmo
	
