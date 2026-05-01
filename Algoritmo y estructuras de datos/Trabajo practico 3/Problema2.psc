Algoritmo Problema2
	
	Definir PostreElejido Como Entero;
	
	Definir stockCoberturaOreo, stockCoberturaFrutilla, stockCoberturaChocolate, stockCoberturaCaramelo Como Entero;
	stockCoberturaOreo <- 5
	stockCoberturaFrutilla <- 3
	stockCoberturaChocolate <- 4
	stockCoberturaCaramelo <- 0
	
	
	Escribir "Escriba el tipo de cobertura que desea, escribir el numero de la opcion que desea";
	Escribir "1: sin cobertura precio 450";
	Escribir "2: cobertura de oreo precio: 480"
	Escribir "3: Cobertura de frutilla precio: 500"	
	Escribir "4: Cobertura con chocolate precio: 520";
	Escribir "5: Cobertura de caramelo precio: 550";
	Leer PostreElejido;
	
	
	
	Segun PostreElejido Hacer
		1:
			Escribir "el postre tendra un precio de 450$"
		2:
			Si stockCoberturaOreo > 0
				Escribir "El postre tendra un precio de 480$ "
			SiNo
				Escribir "No hay cobertura, el precio es de 450 "
			FinSi
		3:
			Si stockCoberturaFrutilla > 0
				Escribir "El postre tendra un precio de 500 "
			SiNo
				Escribir "No hay cobertura, el precio es de 450 "
			FinSi
		4:
			Si stockCoberturaChocolate > 0
				Escribir "El postre tendra un precio de 480$ "
			SiNo
				Escribir "No hay cobertura, el precio es de 450 "
			FinSi
		5:
			Si stockCoberturaCaramelo > 0
				Escribir "El postre tendra un precio de 480$ "
			SiNo
				Escribir "No hay cobertura, el precio es de 450 "
			FinSi
			
		De Otro Modo:
			Escribir "Solo se pueden ingresar numeros, ingrese un numero de el 1 al 5 segun sea la opcion deseada"
	Fin Segun
	
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
