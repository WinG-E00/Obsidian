Un api es una interfaz de aplicacion diseñada para que sea un intermediario entre algun sistema que requiera hacer una peticion a alguna base de datos, entonces el api se encarga de extraer los datos de la base de datos y enviarlos de forma procesable a el sistema que lo requiere.

An API is an interface of aplication designed to be an intermediary between some system that are required to make a petition in a database, that way the API is going to extract the data of the database and send it in a processable way for the system that is required.

Un ejemplo seria 
un alumno, el preceptor, y la administracion,

El alumno necesita saber sus asistencias entonces le pregunta a el preceptor el preceptor le pregunta a administracion y este le devuelve la lista con su asistencia a el alumno.





Actividad 1. Pre-reading: anticipación
1. What is an API?
2. What does authentication mean?
3. What information can technical documentation provide?
4. What do you think this document explains?

An api is the abreviation of Application process interface, and this works like and intermediary between the database and the system that requieres data.

Authentication is an extra step that we need to apply when we need to have a security that the data that is going to enter the database or acces to them, is correct.

technical documentacion can provide information about the way that a system or and API work in case we need to use it.

I think this text is going to explain what are going to be re requirements and the funcionality of this API


Actividad 2:
1. While-reading: comprensión global
The main porpouse of the documents is explain the especification of this Authentication API.

2. The three topics are:
   Request Requirements
   Response Handling
   Security Considerations
3. The intended audience are developers
4. The authentication is necessary because we need to have a garanty that the users is going to acces or register in our system are not going to engage our security or data.
5. the main recomendation is that developers must check if some endpoints or parameters are not deprecated before use it.

# Detailed reading: búsqueda de información específica
1. True
2. False
3. True
4. False
5. True
6. True

**B. Answer the questions**
1. if a required parameter is missing the server while return a validation error
2. The client application must obtain a valid token before retrying the request.
3. Developers should use HTTPS to encrypt data 
4. Deprecated means that a method or a some endpoints are not usefoul anymore and should not be used.
5. Applications should use HTTPS to encrypt data transmitted between the client and the server.
6. Finally, developers should consult the latest APi
		Should significa deberian.
7. Optional parameters can be omitted without preventing the request from being processed.
		can significa que algo puede ser o hacer.

# Actividad 3 Vocabulary in context


| Endpoint       | A specific address or access point in an<br><br>API.                                                 |
| -------------- | ---------------------------------------------------------------------------------------------------- |
| Credentials    |                                                                                                      |
| Error handling | A mechanism for managing errors.                                                                     |
| Payload        | The main data transmitted in a request or<br><br>message.                                            |
| Deprecated     | No longer recommended for use in newer<br><br>versions.                                              |
| Request        | A message sent by a client asking a server<br><br>to perform an operation or provide<br>information. |
# Actividad 4. Aplicación práctica: resolución de un problema técnico

**Caso 1.** 
Missing authentication token
A developer sends a request to a protected endpoint without including a valid access token.

1. The access token is not valid
2. The request now has an error as a response
3. The developer should use a valid acces token.

**Caso 2.**

1. The cause is a invalid acces token
2. The client application must obtain a valid token.
3. Because some paremeters must be deprecated and also we need to check the requirements of the request.

# Actividad 5
1. The main purpose of an API authentication system is verify the user and the consult before they have acces to the system
2. An optinal parameters is something that is no