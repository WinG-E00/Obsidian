```
{
  "openapi": "3.0.0",
  "info": {
    "title": "API Básica",
    "version": "1.0.0",
    "description": "Contrato de prueba para ver cómo funciona Swagger."
  },
  "servers": [
    {
      "url": "http://localhost:3000",
      "description": "Servidor de desarrollo local"
    }
  ],
  "paths": {
    "/api/bebederos": {
      "get": {
        "summary": "Obtener todos los bebederos",
        "description": "Devuelve una lista con todos los registros de la base de datos.",
        "responses": {
          "200": {
            "description": "Lista obtenida correctamente",
            "content": {
              "application/json": {
                "schema": {
                  "type": "array",
                  "items": {
                    "$ref": "#/components/schemas/Bebedero"
                  }
                }
              }
            }
          }
        }
      },
      "post": {
        "summary": "Crear un nuevo bebedero",
        "requestBody": {
          "required": true,
          "content": {
            "application/json": {
              "schema": {
                "$ref": "#/components/schemas/NuevoBebedero"
              }
            }
          }
        },
        "responses": {
          "201": {
            "description": "Creado exitosamente"
          },
          "400": {
            "description": "Error en los datos enviados"
          }
        }
      }
    }
  },
  "components": {
    "schemas": {
      "Bebedero": {
        "type": "object",
        "properties": {
          "id": {
            "type": "integer",
            "example": 1
          },
          "ubicacion": {
            "type": "string",
            "example": "Lote 4 - Norte"
          },
          "estado": {
            "type": "string",
            "example": "Activo"
          }
        }
      },
      "NuevoBebedero": {
        "type": "object",
        "required": ["ubicacion", "estado"],
        "properties": {
          "ubicacion": {
            "type": "string",
            "example": "Lote 5 - Sur"
          },
          "estado": {
            "type": "string",
            "example": "Inactivo"
          }
        }
      }
    }
  }
}




``` 