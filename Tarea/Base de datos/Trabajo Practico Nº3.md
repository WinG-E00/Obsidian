Gaston Encina
## Ejercicio 1
![[../../Pasted image 20260927223038.png]]


## Ejercicio 2

![[../../Pasted image 20260927223816.png]]


resultado
![[../../Pasted image 20260927223901.png]]

## Ejercicio 3

```js
db.padron.aggregate([
  {
    $match: {
      jurisdiccion: "Formosa",
      modalidad_comun: true
    }
  },

  {
    $group: {
      _id: "$localidad",

      inicial: {
        $sum: {
          $cond: [
            {
              $or: [
                "$comun_nivel_inicial_jardin_maternal",
                "$comun_nivel_inicial_jardin_infantes"
              ]
            },
            1,
            0
          ]
        }
      },

      primario: {
        $sum: {
          $cond: ["$comun_primario", 1, 0]
        }
      },

      secundario: {
        $sum: {
          $cond: [
            {
              $or: [
                "$comun_secundario",
                "$comun_secundario_inet"
              ]
            },
            1,
            0
          ]
        }
      },

      superior_no_universitario: {
        $sum: {
          $cond: [
            {
              $or: [
                "$comun_snu",
                "$comun_snu_inet",
                "$comun_snu_cursos"
              ]
            },
            1,
            0
          ]
        }
      }
    }
  },

  {
    $sort: {
      _id: 1
    }
  }
])

```
Aca el resultado es bastante grande asi que voy a pasar el resultado que me dio
![[../../Pasted image 20260927224244.png]]
![[../../Pasted image 20260927224257.png]]
![[../../Pasted image 20260927224308.png]]
Y otros mas pero si lo saco completo se alarga mucho

## Ejercicio 4

![[../../Pasted image 20260927224406.png]]
![[../../Pasted image 20260927224421.png]]

## Ejercicio 5
![[../../Pasted image 20260927224558.png]]


## Ejercicio 6
![[../../Pasted image 20260927224650.png]]



## Ejercicio 7
![[../../Pasted image 20260927224812.png]]
## Ejercicio 8
En este ejercicio algunos campos no estaban guardados como numeros por lo que me tiraba este error
**MongoServerError[Location7157723]:** PlanExecutor error during aggregation :: caused by :: only numbers and dates are allowed in an $add expression


por lo que se tuvo que convertir cada parte

```js
db.matricula_2025.aggregate([
  {
    $match: {
      provincia: "Formosa"
    }
  },
  {
    $group: {
      _id: null,

      maternal: {
        $sum: {
          $add: [
            {
              $convert: {
                input: "$lactantes",
                to: "int",
                onError: 0,
                onNull: 0
              }
            },
            {
              $convert: {
                input: "$deambulantes",
                to: "int",
                onError: 0,
                onNull: 0
              }
            },
            {
              $convert: {
                input: "$s2",
                to: "int",
                onError: 0,
                onNull: 0
              }
            }
          ]
        }
      },

      jardin_infantes: {
        $sum: {
          $add: [
            {
              $convert: {
                input: "$s3",
                to: "int",
                onError: 0,
                onNull: 0
              }
            },
            {
              $convert: {
                input: "$s4",
                to: "int",
                onError: 0,
                onNull: 0
              }
            },
            {
              $convert: {
                input: "$s5",
                to: "int",
                onError: 0,
                onNull: 0
              }
            }
          ]
        }
      }
    }
  }
])

```

![[../../Pasted image 20260927225106.png]]


## Ejercicio 9
```js
db.matricula_2025.aggregate([
  {
    $match: {
      provincia: "Formosa"
    }
  },
  {
    $group: {
      _id: null,

      inicial: {
        $sum: {
          $add: [
            { $convert: { input: "$lactantes", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$deambulantes", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s2", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s3", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s4", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s5", to: "int", onError: 0, onNull: 0 } }
          ]
        }
      },

      primario: {
        $sum: {
          $add: [
            { $convert: { input: "$_1", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_2", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_3", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_4", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_5", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_6", to: "int", onError: 0, onNull: 0 } }
          ]
        }
      },

      secundario: {
        $sum: {
          $add: [
            { $convert: { input: "$_7", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_8", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_9", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_10", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_11", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_12", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_1314", to: "int", onError: 0, onNull: 0 } }
          ]
        }
      },

      superior_no_universitario: {
        $sum: {
          $convert: {
            input: "$_snu",
            to: "int",
            onError: 0,
            onNull: 0
          }
        }
      }
    }
  }
])

```

Como algunos campos vienen vacios se uso convert para cada campo

Resultado
![[../../Pasted image 20260927225459.png]]
## Ejercicio 10
![[../../Pasted image 20260927225719.png]]
![[../../Pasted image 20260927225732.png]]
![[../../Pasted image 20260927225740.png]]
## Ejercicio 11

```js
db.getCollection("Matricula Secciones2023").aggregate([
  {
    $match: {
      CUEanexo: {
        $in: [
          340117200, // Politécnico
          340066700, // J.J. Silva
          340054700, // Félix Atilio Cabrera
          340051100, // Santa Isabel
          340070300  // San José de Clorinda
        ]
      }
    }
  },

  {
    $lookup: {
      from: "padron",
      localField: "CUEanexo",
      foreignField: "_id",
      as: "establecimiento"
    }
  },

  {
    $unwind: "$establecimiento"
  },

  {
    $project: {
      _id: 0,

      establecimiento: "$establecimiento.nombre",

      inicial: {
        $add: [
          { $convert: { input: "$lactantes", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$deambulantes", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$s2", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$s3", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$s4", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$s5", to: "int", onError: 0, onNull: 0 } }
        ]
      },

      primario: {
        $add: [
          { $convert: { input: "$_1", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_2", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_3", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_4", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_5", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_6", to: "int", onError: 0, onNull: 0 } }
        ]
      },

      secundario: {
        $add: [
          { $convert: { input: "$_7", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_8", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_9", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_10", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_11", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_12", to: "int", onError: 0, onNull: 0 } },
          { $convert: { input: "$_1314", to: "int", onError: 0, onNull: 0 } }
        ]
      },

      superior_total: {
        $convert: {
          input: "$_snu",
          to: "int",
          onError: 0,
          onNull: 0
        }
      },

      superior_varones: {
        $convert: {
          input: "$v_snu",
          to: "int",
          onError: 0,
          onNull: 0
        }
      },

      superior_mujeres: {
        $subtract: [
          {
            $convert: {
              input: "$_snu",
              to: "int",
              onError: 0,
              onNull: 0
            }
          },
          {
            $convert: {
              input: "$v_snu",
              to: "int",
              onError: 0,
              onNull: 0
            }
          }
        ]
      }
    }
  }
])

```

![[../../Pasted image 20260927230046.png]]

## Ejercicio 12
```js
db.matricula2025.aggregate([
  {
    $match: {
      provincia: "Formosa"
    }
  },
  {
    $group: {
      _id: "$departamento",

      inicial: {
        $sum: {
          $add: [
            { $convert: { input: "$lactantes", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$deambulantes", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s2", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s3", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s4", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$s5", to: "int", onError: 0, onNull: 0 } }
          ]
        }
      },

      primario: {
        $sum: {
          $add: [
            { $convert: { input: "$_1", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_2", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_3", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_4", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_5", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_6", to: "int", onError: 0, onNull: 0 } }
          ]
        }
      },

      secundario: {
        $sum: {
          $add: [
            { $convert: { input: "$_7", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_8", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_9", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_10", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_11", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_12", to: "int", onError: 0, onNull: 0 } },
            { $convert: { input: "$_1314", to: "int", onError: 0, onNull: 0 } }
          ]
        }
      },

      superior: {
        $sum: {
          $convert: {
            input: "$_snu",
            to: "int",
            onError: 0,
            onNull: 0
          }
        }
      }
    }
  },
  {
    $sort: {
      _id: 1
    }
  }
])
```


![[../../Pasted image 20260927230237.png]]