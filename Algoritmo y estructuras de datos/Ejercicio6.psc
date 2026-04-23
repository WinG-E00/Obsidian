Algoritmo Ejercicio6
    // Definicion de variables
    Definir nombreProducto Como Caracter
    Definir precioUnidad, precioTotal Como Real
    Definir cantidad Como Entero
    
    // Entrada de datos
    Escribir "Ingrese el nombre del producto:"
    Leer nombreProducto
    
    Escribir "Ingrese el precio por unidad:"
    Leer precioUnidad
    
    Escribir "Ingrese el número de unidades vendidas:"
    Leer cantidad
    
   
    precioTotal <- precioUnidad * cantidad
    
    // Salida de resultados
    Escribir "" 
    Escribir "Resumen de la venta:"
    Escribir "Producto: ", nombreProducto
    Escribir "Unidades vendidas: ", cantidad
    Escribir "Precio total: $", precioTotal
    
FinAlgoritmo