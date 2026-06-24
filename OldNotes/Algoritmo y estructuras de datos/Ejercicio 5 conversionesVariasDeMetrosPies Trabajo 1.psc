//Metros a otras unidades de medidas
Funcion resultado <- convertirMetrosAPulgadas(metros)
	Definir resultado Como Real
	resultado <- metros * 39.3701
FinFuncion

Funcion resultado <- convertirMetrosAYardas(metros)
	Definir resultado Como Real
	resultado <- metros * 1.09361
FinFuncion

Funcion resultado <- convertirMetrosAMillas(metros)
	Definir resultado Como Real
	resultado <- metros * 0.000621371
FinFuncion

Funcion resultado <- convertirMetrosAPies(metros)
	Definir resultado Como Real
	resultado <- metros * 3.28084
FinFuncion


// Pies a otras unidades de medida
Funcion resultado <- convertirPiesAMetros(pies)
	Definir resultado Como Real
	resultado <- pies / 3.28084
FinFuncion

Funcion resultado <- convertirPiesAPulgadas(pies)
	Definir resultado Como Real
	resultado <- pies * 12
FinFuncion

Funcion resultado <- convertirPiesAYardas(pies)
	Definir resultado Como Real
	resultado <- pies / 3
FinFuncion

Funcion resultado <- convertirPiesAMillas(pies)
	Definir resultado Como Real
	resultado <- pies / 5280
FinFuncion







Algoritmo conversionesVariasDeMetrosPies
	
	Definir metros, pies Como Entero
	
	Escribir "Escribe la cantidad de pies que quieres convertir"
	Leer pies
	Escribir "Escribe la cantidad de metros que quieres convertir"
	Leer metros 
	
	
	Escribir "Metros a otras unidades de medidas";
	Escribir "Metros a Millas: ", convertirMetrosAMillas(metros);
	Escribir "Metros a pies: ", convertirMetrosAPies(metros);
	Escribir "Metros a pulgadas: ", convertirMetrosAPulgadas(metros);
	Escribir "Metros a yardas: ", convertirMetrosAYardas(metros);
	
	Escribir "////////////////////////////////"
	
	Escribir "Pies a otras unidades de medidas"
	Escribir "Pies a Metros: ", convertirPiesAMetros(pies);
	Escribir "Pies a Millas: ", convertirPiesAMillas(pies);
	Escribir "Pies a Yardas: ", convertirPiesAYardas(pies);
	Escribir "Pies a Pulgadas: ", convertirPiesAPulgadas(pies);
	
	
	
	
	
FinAlgoritmo
