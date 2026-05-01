```csharp
int dia = 3;

string nombreDia = dia switch
{
    1 => "Lunes",
    2 => "Martes",
    3 => "Miércoles",
    4 => "Jueves",
    5 => "Viernes",
    _ => "Fin de semana"
};

Console.WriteLine(nombreDia);

```





#Estructura_de_control 