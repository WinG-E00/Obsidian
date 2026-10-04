### Respuestas de Éxito (2xx)

- **`200 OK`**
    
    - **Significado:** La petición se realizó con éxito.
        
    - **Cuándo usarlo:** En respuestas a peticiones `GET`, `PUT` o `DELETE` exitosas donde devolvés datos o una confirmación de la operación.
        
- **`201 Created`**
    
    - **Significado:** La petición se procesó correctamente y resultó en la creación de un nuevo recurso en la base de datos.
        
    - **Cuándo usarlo:** En el endpoint `POST` de creación (por ejemplo, al crear una nueva tarea o usuario). Se suele acompañar devolviendo el objeto recién creado.
        
- **`204 No Content`**
    
    - **Significado:** La petición fue exitosa, pero la respuesta no incluye un cuerpo de datos.
        
    - **Cuándo usarlo:** Es muy común en peticiones `DELETE` exitosas o en peticiones `PUT` donde solo confirmás la actualización sin devolver el objeto entero.
        

### Errores del Cliente (4xx)

- **`400 Bad Request`**
    
    - **Significado:** Solicitud incorrecta o mal formada. El servidor no puede procesarla porque faltan campos requeridos o el formato enviado (ej. JSON) es sintácticamente inválido.
        
    - **Cuándo usarlo:** Cuando fallan las validaciones del body (por ejemplo, intentar crear un usuario sin enviar el campo `email`).
        
- **`401 Unauthorized`**
    
    - **Significado:** No autenticado. La petición requiere identificación previa.
        
    - **Cuándo usarlo:** El usuario no envió un token (ej. JWT) o el token proporcionado es inválido o expiró.
        
- **`403 Forbidden`**
    
    - **Significado:** Prohibido / Sin permisos. El servidor entendió quién es el usuario, pero este no tiene los privilegios necesarios.
        
    - **Cuándo usarlo:** Un usuario común intenta acceder a una ruta administrativa o editar un recurso de otro usuario.
        
- **`404 Not Found`**
    
    - **Significado:** Recurso no encontrado. La URL requerida no existe o el registro solicitado no está en la base de datos.
        
    - **Cuándo usarlo:** Al intentar obtener, editar o eliminar un registro por ID que no existe (ej. `GET /users/999` si el ID 999 no está en MySQL).
        
- **`409 Conflict`**
    
    - **Significado:** Conflicto con el estado actual del servidor.
        
    - **Cuándo usarlo:** Al intentar crear o actualizar un recurso que viola una restricción de unicidad en la base de datos (por ejemplo, intentar registrar un usuario con un `email` que ya existe).
        

### Errores del Servidor (5xx)

- **`500 Internal Server Error`**
    
    - **Significado:** Error interno del servidor. Ocurrió una condición inesperada en el backend que impidió completar la solicitud.
        
    - **Cuándo usarlo:** En el bloque `catch` de tus bloques `try/catch`. Ocurre cuando se cae la conexión a MySQL, falla una consulta SQL por un error de sintaxis en el código, o una variable es `undefined`.
        
- **`502 Bad Gateway`**
    
    - **Significado:** El servidor actuaba como proxy o puerta de enlace y recibió una respuesta inválida del servidor upstream.
        
- **`503 Service Unavailable`**
    
    - **Significado:** El servidor no está disponible temporalmente por mantenimiento o sobrecarga.