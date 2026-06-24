Que es? como funciona?
Tipo de dato
;;
El **CHARACTER VARYING(n)**, o simplemente **VARCHAR(n)**, ==es un tipo de dato para guardar texto de **longitud variable** que, a diferencia del anterior, solo ocupa el espacio de los caracteres que realmente escribas== (más un pequeño extra para que el sistema sepa cuánto mide). Si defines un `VARCHAR(100)` y solo guardas la palabra "Hola", la base de datos **no rellena con espacios** ni desperdicia el lugar de las otras 96 letras, lo que lo hace mucho más eficiente para ahorrar espacio en disco cuando guardas datos de distintos tamaños como nombres, correos electrónicos o descripciones. El límite `(n)` funciona únicamente como un "techo" o **tope máximo** permitido, por lo que si intentas meter un texto que supere ese número, el sistema te dará un error para proteger la integridad de la tabla.
<!--SR:!2026-05-16,9,250-->

#baseDeDatos #tipos