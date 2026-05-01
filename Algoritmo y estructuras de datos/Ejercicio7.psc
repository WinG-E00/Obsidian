Algoritmo sin_titulo
	
	Definir nombreProducto Como Caracter;
	Definir precioUnidad, numeroUnidades, numeroUnidadesVendidas Como Entero;
	// variable de salida
	Definir valorNumeroUnidadesVendidas Como Entero;
	
	Escribir "escribe el nombre del producto";
	Leer nombreProducto
	Escribir "Escribe el precio por unidad"
	Leer precioUnidad
	Escribir "Escribe el numero de unidades(stock)"
	Leer numeroUnidades
	Escribir "Escribe el numero de unidades vendidas"
	leer numeroUnidadesVendidas
	
	
	valorNumeroUnidadesVendidas <- numeroUnidades * precioUnidad
	
	
	
	Escribir "El nombre de el producto es: ", nombreProducto;
	Escribir "El numero de unidades vendidas es: ", numeroUnidades, " y su valor total es: " valorNumeroUnidadesVendidas;
	Escribir "El valor total de el stock es de: ", precioUnidad * numeroUnidades;
	
	
	
	
	
	
	
	
	
	
	
	
FinAlgoritmo
