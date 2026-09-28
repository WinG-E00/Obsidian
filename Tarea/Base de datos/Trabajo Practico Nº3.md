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

## Ejercicio 7

## Ejercicio 8

## Ejercicio 9

## Ejercicio 10

## Ejercicio 11

## Ejercicio 12