Algoritmo  Ejercicio3
    // Definir las variables a utilizar
    Definir nombreApellido Como Caracter;
    Definir ciudad Como Caracter;
    Definir edad Como Entero;
    Definir dni Como Caracter;
    Definir hobby Como Caracter;
    
    // Pedir los datos al usuario
    Escribir "Ingrese Nombre y Apellido:";
    Leer nombreApellido;
    
    Escribir "Ingrese Ciudad:";
    Leer ciudad;
    
    Escribir "Ingrese Edad:";
    Leer edad;
    
    Escribir "Ingrese DNI:";
    Leer dni;
    
    Escribir "Ingrese Hobby (pasatiempo):";
    Leer hobby;
    
    Escribir "----------------------------------------";
    
    // Evaluar las franjas etarias
    Si edad >= 4 Y edad < 16 Entonces
        Escribir "Pertenece a la franja etaria de los ninos";
        Escribir "Nombre y Apellido: ", nombreApellido;
        Escribir "DNI: ", dni;
        Escribir "Hobby: ", hobby;
    SiNo
        Si edad >= 16 Y edad < 22 Entonces
            Escribir "Pertenece a la franja etaria de los Jovenes";
            Escribir "Nombre y Apellido: ", nombreApellido;
            Escribir "DNI: ", dni;
            Escribir "Ciudad: ", ciudad;
        SiNo
            Si edad >= 22 Y edad < 60 Entonces
                Escribir "Pertenece a la franja etaria de los Adultos";
                Escribir "Nombre y Apellido: ", nombreApellido;
                Escribir "DNI: ", dni;
                Escribir "Ciudad: ", ciudad;
            SiNo
                Si edad >= 60 Y edad < 100 Entonces
                    Escribir "Pertenece a la franja etaria de los Adultos mayores";
                    Escribir "Nombre y Apellido: ", nombreApellido;
                    Escribir "DNI: ", dni;
                    Escribir "Hobby: ", hobby;
                SiNo
                    // Caso para menores de 4 o mayores/iguales a 100
                    Escribir "No pertenece a los grupos de estudio";
                FinSi;
            FinSi;
        FinSi;
    FinSi;
    
FinAlgoritmo

	