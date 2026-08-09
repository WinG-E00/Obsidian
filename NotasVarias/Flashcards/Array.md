Metodos y propiedades de array
;;
## Propiedades
![[../../OldNotes/Pasted image 20260626051918.png]]

## Metodos

### .filter()
Explicación: Crea un nuevo array con todos los elementos que cumplan la condición implementada por la función dada.
```JS
const arr = [1, 2, 3, 4];
console.log(arr.filter(x => x > 2)); // [3, 4]
```

### `find()`

**Explicación:** Devuelve el primer elemento del array que cumpla con la condición. Si no, devuelve `undefined`.

```JS
const arr = [5, 12, 8];
console.log(arr.find(x => x > 10)); // 12
```

### `findIndex()`

**Explicación:** Devuelve el índice del primer elemento que cumpla con la condición. Si no, devuelve `-1`.

```JS
const arr = [5, 12, 8];
console.log(arr.findIndex(x => x > 10)); // 1
```

### `findLast()`

**Explicación:** Recorre el array desde el final hacia el principio y devuelve el primer elemento que cumpla la condición.

JavaScript

```JS
const arr = [5, 12, 50, 8];
console.log(arr.findLast(x => x > 10)); // 50
```

### `findLastIndex()`

**Explicación:** Recorre desde el final y devuelve el índice del primer elemento que cumpla la condición.

```JS
const arr = [5, 12, 50, 8];
console.log(arr.findLastIndex(x => x > 10)); // 2
```

### `forEach()`

**Explicación:** Ejecuta la función indicada una vez por cada elemento del array. No devuelve nada.

JavaScript

```JS
const arr = ['a', 'b'];
arr.forEach(x => console.log(x)); // Imprime 'a', luego 'b'
```

### `includes()`

**Explicación:** Determina si el array contiene un determinado elemento, devolviendo `true` o `false`.

```JS
const arr = [1, 2, 3];
console.log(arr.includes(2)); // true
```


### `push()`

**Explicación:** Añade uno o más elementos al final del array y devuelve la nueva longitud del array. Modifica el original.

JavaScript

```JS
const arr = [1, 2];
console.log(arr.push(3)); // 3 (nueva longitud)
```

### `slice()`

**Explicación:** Devuelve una copia superficial de una porción del array dentro de un nuevo array, empezando en un índice de inicio hasta fin (no incluido).

```JS
const arr = ['a', 'b', 'c'];
console.log(arr.slice(1, 3)); // ['b', 'c']
```

### `splice()`

**Explicación:** Cambia el contenido de un array eliminando elementos existentes y/o agregando nuevos elementos. Modifica el original.

```JS
const arr = [1, 2, 4];
arr.splice(2, 0, 3); // En índice 2, elimina 0 elementos, inserta 3
console.log(arr); // [1, 2, 3, 4]
```


#flashcard_examen_tlp
