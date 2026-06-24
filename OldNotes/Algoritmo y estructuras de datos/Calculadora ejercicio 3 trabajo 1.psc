// Aca arriba esta la modularizacion, cada funcion realiza una accion de la calculadora
// Nota las funciones solo pueden tomar 2 parametros tal como lo pide el ejercicio para que realize mas acciones solicitarlo en los trabajos

Funcion resultadoSuma <- funcionSuma ( numUno, numDos )
	resultadoSuma <- numUno + numDos
Fin Funcion

Funcion  resultadoResta <- funcionResta (numUno, numDos)
	resultadoResta <- numUno - numDos
FinFuncion


Funcion resultadoMultiplicacion <- funcionMultiplicacion (numUno, numDos)
	resultadoMultiplicacion <- numUno * numDos
FinFuncion


Funcion resultadoDivision <- funcionDivision (numUno, numDos)
	resultadoDivision <- numUno / numDos
FinFuncion

// Aca esta el Algoritmo calculadora muestra el resultado de cada una de las funciones, en base a dos parametros de entrada
Algoritmo calculadora
	Definir numeroUno, numeroDos Como Entero;
	
	Escribir "Escribe dos numeros para mostrar los resultados de cada operacion"
	Leer numeroUno, numeroDos;
	
	Escribir "Suma ", funcionSuma(numeroUno,numeroDos) ;
	
	Escribir "resta " , funcionResta(numeroUno,numeroDos) ;
	
	Escribir "multiplicacion ", funcionMultiplicacion(numeroUno,numeroDos) ;
	
	Escribir "division ", funcionDivision(numeroUno,numeroDos) ;
	
	
	
FinAlgoritmo
