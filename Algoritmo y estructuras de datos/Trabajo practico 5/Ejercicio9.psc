Algoritmo Ejercicio9
	// definir variables para productos y precios
	Definir precioP1, precioP2, precioP3, precioP4 Como Entero;
	Definir opcionProducto, cantidad Como Entero;
	Definir precioSeleccionado, costoTotal Como Entero;
	
	// definir variables de pago y vuelto
	Definir montoPagado, vuelto Como Entero;
	Definir billetes50, billetes10 Como Entero;
	Definir restoVuelto Como Entero;
	
	// inicializar los 4 productos con sus precios
	precioP1 <- 120;
	precioP2 <- 250;
	precioP3 <- 315;
	precioP4 <- 450;
	
	// mostrar menu de productos
	Escribir "seleccione el producto que desea adquirir:";
	Escribir "1 - producto a ($", precioP1, ")";
	Escribir "2 - producto b ($", precioP2, ")";
	Escribir "3 - producto c ($", precioP3, ")";
	Escribir "4 - producto d ($", precioP4, ")";
	Leer opcionProducto;
	
	// asignar precio segun eleccion
	Segun opcionProducto Hacer
		1: precioSeleccionado <- precioP1;
		2: precioSeleccionado <- precioP2;
		3: precioSeleccionado <- precioP3;
		4: precioSeleccionado <- precioP4;
		De Otro Modo: precioSeleccionado <- 0;
	FinSegun;
	
	Si precioSeleccionado > 0 Entonces
		Escribir "ingrese la cantidad de unidades:";
		Leer cantidad;
		
		// calcular el costo total de la compra
		costoTotal <- precioSeleccionado * cantidad;
		
		// a) el valor total no puede supercar los $1000
		Si costoTotal > 1000 Entonces
			Escribir "solo puedo realizar ventas hasta $1000";
		SiNo
			Escribir "el valor total de la compra es: $", costoTotal;
			
			// b) permitir el ingreso del monto pagado (restriccion g: un solo billete valido)
			Escribir "ingrese el billete con el que paga (1000, 500, 200 o 100):";
			Leer montoPagado;
			
			Si montoPagado = 1000 O montoPagado = 500 O montoPagado = 200 O montoPagado = 100 Entonces
				Si montoPagado < costoTotal Entonces
					Escribir "el monto ingresado es insuficiente para pagar la compra.";
				SiNo
					// c) calculo del vuelto
					vuelto <- montoPagado - costoTotal;
					Escribir "vuelto total a entregar: $", vuelto;
					
					// f) redondeo a favor del cliente: si el vuelto no termina en 0, 
					// se sube el vuelto al siguiente multiplo de 10 para beneficiar al usuario.
					Si (vuelto Mod 10) <> 0 Entonces
						vuelto <- vuelto + (10 - (vuelto Mod 10));
						Escribir "vuelto redondeado a favor del cliente: $", vuelto;
					FinSi;
					
					// d) y e) calcular cantidad de billetes de 50 y 10
					billetes50 <- Trunc(vuelto / 50);
					restoVuelto <- vuelto Mod 50;
					
					billetes10 <- Trunc(restoVuelto / 10);
					
					// informar los resultados
					Escribir "----------------------------------------";
					Escribir "desglose del vuelto:";
					Escribir "billetes de $50: ", billetes50;
					Escribir "billetes de $10: ", billetes10;
					Escribir "----------------------------------------";
				FinSi;
			SiNo
				Escribir "error: la maquina solo acepta un billete de 1000, 500, 200 o 100.";
			FinSi;
		FinSi;
	SiNo
		Escribir "opcion de producto no valida.";
	FinSi;
	
FinAlgoritmo