| Aspecto              | Bedrock Linux                                                        | NixOS                                          | Guix                                        |
| -------------------- | -------------------------------------------------------------------- | ---------------------------------------------- | ------------------------------------------- |
| Enfoque principal    | Mezclar múltiples distros en un solo sistema                         | Gestión declarativa y reproducible del sistema | Gestión funcional y libre del sistema       |
| Base                 | Se instala sobre una distro existente                                | Construido desde cero sobre el gestor Nix      | Construido desde cero sobre GNU Guix        |
| Repositorios         | Acceso nativo a todos los repos de cada distro (apt, pacman, AUR...) | Único repositorio nixpkgs (~100k paquetes)     | Repositorio propio, más pequeño que nixpkgs |
| Reproducibilidad     | No garantizada                                                       | Alta — mismo configuration.nix = mismo sistema | Muy alta — énfasis en software 100% libre   |
| Curva de aprendizaje | Alta — estratos y posibles conflictos                                | Alta — lenguaje Nix con sintaxis funcional     | Muy alta — usa Scheme (Guile) como lenguaje |
| Comunidad            | Muy pequeña, mantenido por una persona                               | Activa y creciente                             | Pequeña, enfocada en software libre         |
| Filosofía            | Libertad de mezclar ecosistemas                                      | Declarativo y reproducible                     | Software libre, reproducible y ético        |
| Apto para producción | No recomendado                                                       | Sí, usado en servidores                        | Limitado, más experimental                  |
