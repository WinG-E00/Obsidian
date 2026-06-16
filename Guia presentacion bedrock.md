

| Introducción + historia + motivación 3 min            | 3 mins |
| ----------------------------------------------------- | ------ |
| Características + interfaz gráfica + requisitos 3 min | 3 mins |
| Casos de uso + comparación + curiosidades 2 min       | 2 mins |
| Demostración práctica en vivo 5 min                   | 5 mins |
| Conclusiones + preguntas                              | 2 mins |
|                                                       |        |


### Mi parte
Puntos importantes que voy a tocar

Casos de usos
- Usuario tecnico avanzado
- Distro hopper
- Desarrollador , sysadmin
- El entusiasta
Entornos
- Hogar 
- Programacion
- Ciberseguridad 
- Servidores



Comparacion

|Criterio|Bedrock Linux|Gentoo|Linux From Scratch|
|---|---|---|---|
|Enfoque principal|Mezclar múltiples distros en un solo sistema|Sistema compilado desde fuente con máxima personalización|Construir un sistema Linux completamente desde cero de forma manual|
|Base|Se instala sobre una distro existente|Distro independiente con su propio ecosistema|No tiene base, se construye pieza por pieza|
|Gestión de paquetes|Usa los gestores nativos de cada distro (apt, pacman, AUR...)|Portage — descarga y compila código fuente con USE flags|Sin gestor de paquetes por defecto, todo es manual|
|Repositorios|Acceso nativo a todos los repos de cada distro|packages.gentoo.org + overlays de la comunidad|Sin repositorios, el usuario busca y descarga cada fuente|
|Personalización|Alta — elegís qué distros y paquetes mezclar|Muy alta — controlás cada característica de cada paquete|Total — construís exactamente lo que querés desde cero|
|Curva de aprendizaje|Alta|Muy alta|Extrema|
|Comunidad|Muy pequeña, mantenido por una persona|Grande y activa|Pequeña, orientada al aprendizaje|
|Propósito|Flexibilidad de ecosistema|Sistema optimizado y personalizado para uso diario|Educativo — entender Linux desde adentro|
|Consumo de RAM|Muy bajo de base|Bajo — depende de lo que instales|Mínimo — solo lo que vos ponés|
|Entorno visual|Ninguno por defecto|Ninguno por defecto|Ninguno por defecto|
|Apto para producción|No recomendado|Sí, con experiencia suficiente|No, es principalmente educativo|
|Tiempo de instalación|Moderado|Alto — compilar lleva horas|Muy alto — días dependiendo de la experiencia|

Comparacion

| Criterio         | Bedrock Linux                                                           | Gentoo                                                                          | Linux From Scratch                                                        |
| ---------------- | ----------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| Facilidad de uso | Difícil — requiere conocimiento avanzado de Linux y gestión de estratos | Difícil — compilación, USE flags y configuración manual                         | Extremadamente difícil — todo se hace a mano sin asistencia automatizada  |
| Consumo de RAM   | Muy bajo de base — depende de lo que instales encima                    | Bajo — solo corre lo que vos compilaste e instalaste                            | Mínimo — únicamente lo que vos pusiste en el sistema                      |
| Propósito        | Mezclar múltiples distros en un solo sistema                            | Sistema optimizado y personalizado para uso diario                              | Educativo — aprender cómo funciona Linux desde adentro                    |
| Entorno visual   | Ninguno por defecto — instalas lo que quieras desde cualquier estrato   | Ninguno por defecto — instalás un entorno de escritorio manualmente via Portage | Ninguno por defecto — debés construirlo e instalarlo completamente a mano |


Curiosidades
- Dato curioso 1: 
Todas las versiones de Bedrock Linux llevan el nombre de personajes de las series de televisión de Nickelodeon Avatar: The Last Airbender y The Legend of Korra.

  
- Dato curioso 2: 
Bedrock Linux no hace mucho por sí solo; más bien, es la base sobre la que se asientan partes de otras distribuciones de Linux. Las ideas iniciales para el nombre buscaban reflejar este hecho. Otros nombres propuestos fueron "Foundation Linux", "Frame Linux" y "Scaffolding Linux". La elección se hizo sin tener en cuenta la serie de televisión Los Picapiedra ni el videojuego Minecraft.

  

- Dato curioso 3:  
    Bedrock linux no tiene una imagen ISO de instalación como otras distros tradicionales, Bedrock se ejecuta a partir de un script en una distro base el cual es el siguiente:
    

         Run the script as root with the --hijack flag:

sh ./bedrock-linux-release-arch.sh --hijack

a este proceso se lo conoce como hijack