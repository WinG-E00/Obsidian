Algoritmo Ejercicio12
	// Definición de variables
	Definir cantAlumnos, cantMesas Como Entero
	Definir precioSilla, precioNotebook, precioMesa, precioKit Como Real
	Definir subtotalSillas, subtotalNotebooks, subtotalKits, subtotalMesas Como Real
	Definir presupuestoTotal Como Real
	
	cantAlumnos <- 50
	
	// Entrada de datos
	Escribir "Ingrese el precio de una silla:"
	Leer precioSilla
	Escribir "Ingrese el precio de una notebook:"
	Leer precioNotebook
	
	// Proceso de cálculo de precios unitarios según relaciones
	precioMesa <- precioSilla * 3
	precioKit <- precioNotebook / 10
	
	// Cálculo de cantidades
	// 1 mesa cada 5 alumnos = 50 / 5
	cantMesas <- cantAlumnos / 5
	
	// Cálculo de subtotales
	subtotalSillas <- cantAlumnos * precioSilla
	subtotalNotebooks <- cantAlumnos * precioNotebook
	subtotalKits <- cantAlumnos * precioKit
	subtotalMesas <- cantMesas * precioMesa
	
	// Presupuesto final
	presupuestoTotal <- subtotalSillas + subtotalNotebooks + subtotalKits + subtotalMesas
	
	// Salida de resultados
	Escribir "//////////////////////////////////////////"
	Escribir "Detalle del equipamiento para ", cantAlumnos, " alumnos:"
	Escribir "Mesas necesarias: ", cantMesas
	Escribir "Subtotal Sillas: $", subtotalSillas
	Escribir "Subtotal Notebooks: $", subtotalNotebooks
	Escribir "Subtotal Kits: $", subtotalKits
	Escribir "Subtotal Mesas: $", subtotalMesas
	Escribir "///////////////////////////////////////////"
	Escribir presupuestoTotal, " Presupuesto total"
	
FinAlgoritmo

	

