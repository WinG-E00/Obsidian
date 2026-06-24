Que es?
;;
Asegura que la base de datos solo cambie siguiendo las **reglas de negocio** y de integridad.
___
- **En la práctica:** Si tienes una regla que dice que una cuenta no puede tener saldo negativo, y la transferencia intentara dejar a la Cuenta A en -100, la base de datos rechazará toda la operación porque rompería la "consistencia" del sistema.
Es el estoisismo de la base de datos
<!--SR:!2026-05-13,6,230-->


 #baseDeDatos #elemento 