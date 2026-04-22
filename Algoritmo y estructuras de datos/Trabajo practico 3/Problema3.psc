Algoritmo Problema3
	
	Definir horas, minutos, segundoss Como Entero;
	
	Definir VariableTiempoTotalEnSegundos Como Real
	
	Escribir "Escribe el tiempo en formato hh:mm:ss"
	Escribir "Primero escribe la cantidad de horas"
	leer horas;
	
	leer minutos;
	
	leer segundoss
	
	
	// Conversion de Formato hh:mm:ss a unidad de solo segundos 
	VariableTiempoTotalEnSegundos <-  segundoss + (minutos * (60 / 1)) + (horas * (3600/1)) ;
	
	
	
	
	
	Si (horas >= 0 y horas < 24) y (minutos >= 0 y minutos < 60) y (segundos >= 0  y segundos < 60) Entonces
		Escribir "Hora:", horas " Minutos:", minutos, " Segundos:", segundoss + 1;
	SiNo
		Escribir "La hora ingresada no es valida";
	FinSi
	
	
	
FinAlgoritmo
