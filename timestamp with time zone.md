Que es como funciona?
;;
Basicamente para guardar fecha y hora pero con la hora del servidor
En MySQL, este es especial porque **sí depende de la zona horaria** del servidor.
- **Ejemplo:** `ultima_actualizacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP`
- **La magia:** Si el servidor cambia su zona horaria (de UTC-3 a UTC-0), el valor se ajusta solo para mostrar la hora correcta en esa nueva zona. Además, es muy común usarlo para que se actualice solo cada vez que tocas un registro.

 #baseDeDatos