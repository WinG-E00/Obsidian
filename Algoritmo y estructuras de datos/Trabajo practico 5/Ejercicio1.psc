Algoritmo  Ejercicio1
    // Definir los tipos de datos de cada variable
    Definir cuil Como Caracter;
    Definir nombre, apellido Como Caracter;
    Definir fechaNacimiento, nacionalidad Como Caracter;
    Definir estadoCivil, cantidadHijos Como Entero;
    Definir trabaja, esFormoseno Como Caracter;
    Definir nombreEmpresa, domicilioEmpresa Como Caracter;
    Definir ciudadNacimiento, descEstadoCivil Como Caracter;
    
    // Iniciar con texto vacio por si el usuario no los completa
    nombreEmpresa <- "";
    domicilioEmpresa <- "";
    ciudadNacimiento <- "";
    
    // Pedir los datos basicos
    Escribir "Ingrese CUIL:";
    Leer cuil;
    
    Escribir "Ingrese Nombre:";
    Leer nombre;
    
    Escribir "Ingrese Apellido:";
    Leer apellido;
    
    Escribir "Ingrese Fecha de Nacimiento:";
    Leer fechaNacimiento;
    
    Escribir "Ingrese Nacionalidad:";
    Leer nacionalidad;
    
    Escribir "Ingrese Estado Civil (1- Casado, 2- Soltero, 3- Divorciado, 4- Otros):";
    Leer estadoCivil;
    
    Escribir "?Trabaja actualmente? (S/N):";
    Leer trabaja;
    
    Escribir "?Es formoseno? (S/N):";
    Leer esFormoseno;
    
    Escribir "Ingrese la cantidad de hijos que posee:";
    Leer cantidadHijos;
    
    // Si trabaja, pedir datos de la empresa
    Si Mayusculas(trabaja) = "S" Entonces
        Escribir "Ingrese el nombre de la empresa:";
        Leer nombreEmpresa;
        Escribir "Ingrese el domicilio de la empresa:";
        Leer domicilioEmpresa;
    FinSi;
    
    // Si es de Formosa, pedir la ciudad
    Si Mayusculas(esFormoseno) = "S" Entonces
        Escribir "Ingrese el nombre de la ciudad de nacimiento:";
        Leer ciudadNacimiento;
    FinSi;
    
    // Guardar el nombre del estado civil segun el numero ingresado
    Segun estadoCivil Hacer
        1:
            descEstadoCivil <- "Casado";
        2:
            descEstadoCivil <- "Soltero";
        3:
            descEstadoCivil <- "Divorciado";
        4:
            descEstadoCivil <- "Otros";
        De Otro Modo:
            descEstadoCivil <- "Invalido";
    FinSegun;
    
    
    
    // Mostrar los resultados
    Escribir "--- DATOS ---";
    Escribir "CUIL: ", cuil;
    Escribir "Nombre: ", nombre, " ", apellido;
    Escribir "Nacionalidad: ", nacionalidad;
    Escribir "Fecha de nacimiento: ", fechaNacimiento;
    Escribir "Estado Civil: ", descEstadoCivil;
    
    // Mostrar empresa solo si trabaja
    Si Mayusculas(trabaja) = "S" Entonces
        Escribir "Empresa: ", nombreEmpresa;
        Escribir "Domicilio: ", domicilioEmpresa;
    FinSi;
    
    // Mostrar ciudad solo si es formoseno
    Si Mayusculas(esFormoseno) = "S" Entonces
        Escribir "Ciudad: ", ciudadNacimiento;
    FinSi;
    
    // Mostrar los hijos o el mensaje "sin hijos"
    Si cantidadHijos > 0 Entonces
        Escribir "Hijos: ", cantidadHijos;
    SiNo
        Escribir "Hijos: sin hijos";
    FinSi;
    
FinAlgoritmo
