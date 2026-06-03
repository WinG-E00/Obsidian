Algoritmo Ejercicio7
	// definir las variables de entrada
	Definir superficie, valorMetro, precioBase Como Real;
	Definir formaPago Como Entero;
	
	// definir las variables para calculos
	Definir cuotaInicialBase, cuotaInicialFinal Como Real;
	Definir precioVentaFinal Como Real;
	
	// pedir los datos de la propiedad
	Escribir "Ingrese la superficie de la propiedad en metros cuadrados:";
	Leer superficie;
	
	Escribir "Ingrese el valor del metro cuadrado:";
	Leer valorMetro;
	
	Escribir "Ingrese la forma de pago de la cuota inicial (1 o 2):";
	Leer formaPago;
	
	// calcular el precio base de la propiedad
	precioBase <- superficie * valorMetro;
	
	// calcular la cuota inicial (20% del precio base)
	cuotaInicialBase <- precioBase * 0.20;
	
	// evaluar forma de pago para aplicar descuento o recargo
	Si formaPago = 1 Entonces
		// descuento del 15% sobre la cuota inicial
		cuotaInicialFinal <- cuotaInicialBase * 0.85;
	SiNo
		// recargo del 8% sobre la cuota inicial
		cuotaInicialFinal <- cuotaInicialBase * 1.08;
	FinSi;
	
	// el precio de venta es el 80% restante mas la cuota inicial final
	precioVentaFinal <- (precioBase * 0.80) + cuotaInicialFinal;
	
	Escribir "----------------------------------------";
	Escribir "Precio Base de la propiedad: $", precioBase;
	Escribir "Valor de la Cuota Inicial: $", cuotaInicialFinal```
	

	Escribir "Precio de Venta Final: $", precioVentaFinal;
	
FinAlgoritmo