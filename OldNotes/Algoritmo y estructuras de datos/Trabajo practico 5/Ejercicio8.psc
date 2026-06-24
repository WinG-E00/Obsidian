Algoritmo Ejercicio8
	// definir variables de acceso
	Definir usuarioIngresado Como Caracter;
	Definir pinIngresado, pinCorrecto Como Entero;
	Definir usuarioCorrecto Como Caracter;
	
	// definir variables de dinero y cuentas
	Definir saldo1, saldo2 Como Real;
	Definir valorDolar, monto Como Real;
	Definir opcionMenu, cuentaSeleccionada, tipoOperacion Como Entero;
	
	// inicializar datos fijos del cajero
	usuarioCorrecto <- "GENERICO";
	pinCorrecto <- 4326;
	saldo1 <- 150000; // saldo inicial cuenta 1
	saldo2 <- 85000;  // saldo inicial cuenta 2
	
	// a) validacion de ingreso
	Escribir "Ingrese su usuario:";
	Leer usuarioIngresado;
	Escribir "Ingrese su PIN de 4 numeros:";
	Leer pinIngresado;
	
	Si usuarioIngresado = usuarioCorrecto Y pinIngresado = pinCorrecto Entonces
		// ingreso exitoso - pedir valor del dolar para los calculos del punto d
		Escribir "Ingrese el valor del dolar del dia:";
		Leer valorDolar;
		
		Escribir "----------------------------------------";
		Escribir "BIENVENIDO AL SISTEMA";
		Escribir "1- Realizar Extraccion o Deposito";
		Escribir "2- Consultar Saldos";
		Leer opcionMenu;
		
		Segun opcionMenu Hacer
			1:
				// c) extracciones o depositos
				Escribir "Seleccione la cuenta (1 o 2):";
				Leer cuentaSeleccionada;
				Escribir "Seleccione operacion (1- Extraccion, 2- Deposito):";
				Leer tipoOperacion;
				Escribir "Ingrese el monto:";
				Leer monto;
				
				Si tipoOperacion = 1 Entonces
					// logica de extraccion
					Si cuentaSeleccionada = 1 Entonces
						Si monto <= saldo1 Entonces
							saldo1 <- saldo1 - monto;
							Escribir "Extraccion exitosa.";
						SiNo
							Escribir "Saldo insuficiente.";
						FinSi;
					SiNo
						Si monto <= saldo2 Entonces
							saldo2 <- saldo2 - monto;
							Escribir "Extraccion exitosa.";
						SiNo
							Escribir "Saldo insuficiente.";
						FinSi;
					FinSi;
				SiNo
					// logica de deposito
					Si cuentaSeleccionada = 1 Entonces
						saldo1 <- saldo1 + monto;
					SiNo
						saldo2 <- saldo2 + monto;
					FinSi;
					Escribir "Deposito acreditado.";
				FinSi;
				
			2:
				// d) consulta de saldos en pesos y dolares
				Escribir "Saldos de la Cuenta 1:";
				Escribir "Pesos: $", saldo1;
				Escribir "Dolares: U$D ", (saldo1 / valorDolar);
				Escribir "----------------------------------------";
				Escribir "Saldos de la Cuenta 2:";
				Escribir "Pesos: $", saldo2;
				Escribir "Dolares: U$D ", (saldo2 / valorDolar);
				
			De Otro Modo:
				Escribir "Opcion no valida.";
		FinSegun;
		
	SiNo
		// error de credenciales
		Escribir "El pin es incorrecto``` o el usuario no existe.";
	FinSi;
	
FinAlgoritmo