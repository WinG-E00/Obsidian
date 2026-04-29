Que son?
;;
Son espacios donde podes almacenar funciones, que ademas podemos exportarlas como [[Modulos]]
<!--SR:!2026-05-02,4,170-->

```ts


namespace Utilities {
export function greet(name: string): string {
return `Hello, ${name}!`;
}
export function capitalize(str: string): string {
return str.toUpperCase();
}
}


```

[[Typescript]]

#typescript_flashcards ****