Algoritmo REloj
	
	// Definicion de variables
		//variables de entrada
	Definir hora, minutos, segundoss Como Entero
	
		//Variables para hacer las operaciones
	Definir segundosHora, segundosMinutos, segundosTotal, segundosTotalSuma Como Entero
	
		//variables de salida
	Definir conversionHora, conversionMinuto, conversionSeg Como Real;
	
	
	//Validaciones
	Escribir "Ingrese la hora, minutos, segundos, en formato"
	
	Escribir "escribe solo la hora";
	Leer hora 
	
	Escribir "Escribe los minutos";
	Leer minutos
	
	Escribir "Escribe los segundos"
	Leer segundoss
	Si hora >= 0 y hora < 24 Entonces
		hora = hora
	SiNo
		Escribir "Vuelva a escribir las horas, no cumple las condicones"
		Leer hora
		
		
		
		Si minutos >= 0 y minutos < 60 Entonces
			
			minutos = minutos
			
		SiNo
			Escribir "Vuelve a escribir minutos"
			Leer minutos
			
			Si segundoss >= 0 y segundoss < 60 Entonces
				segundoss = segundoss
				
			SiNo
				Escribir "Vuelve a escribir los segundos correctamente"
				Leer segundoss
				
			FinSi
			
		FinSi
		
	FinSi
		
	
	
	//Convertir formato a una sola unidad de tiempo
	
	segundosHora <- hora * 60 * 60
	segundosMinutos <- minutos * 60
	
	segundosTotal <- segundosHora + segundosMinutos + segundoss
	
	
	// Suma de 1 segundo a segundos totales
	
	segundosTotalSuma <- segundosTotal + 1;
 	
	
	// Convertir de nuevo los segundos totales a formato HH/MM/SS
	
	
	conversionHora <- trunc(segundosTotalSuma / 3600)
	
	conversionMinuto <- trunc((segundosTotalSuma MOD 3600) / 60 )
	
	conversionSeg <- segundosTotalSuma MOD 60
	
	
	Escribir "Hora:",hora "minutos:", minutos "segundos:", segundoss; 
	
	Escribir "Hora actual:", conversionHora, ":",conversionMinuto ":", conversionSeg;
	
	
		
		
		
FinAlgoritmo
