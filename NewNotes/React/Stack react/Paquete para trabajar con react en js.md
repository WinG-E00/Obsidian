# Paquete para trabajar con React (JavaScript)

Guía paso a paso para crear un proyecto **Vite + React + Tailwind + shadcn/ui** usando **JavaScript**.

> Nota: También podés consultar la versión con TypeScript en [[Paquete para trabajar con react en ts]].
> Documentación oficial: [shadcn/ui — Vite](https://ui.shadcn.com/docs/installation/vite)

## 1. Crear el proyecto con Vite

Ejecutá el siguiente comando y seleccioná la plantilla **React** (JavaScript):

```bash
npm create vite@latest
```

Para crearlo directamente con la plantilla de JavaScript:

```bash
npm create vite@latest mi-proyecto-shadcn -- --template react
```

Al finalizar, entrá a la carpeta del proyecto e instalá las dependencias:

```bash
cd mi-proyecto-shadcn
npm install
```

## 2. Instalar Tailwind CSS

Instalá Tailwind CSS v4 junto con el plugin de Vite:

```bash
npm install tailwindcss @tailwindcss/vite
```

## 3. Configurar Vite

Abrí `vite.config.js` y reemplazá todo su contenido con:


```js
npm install -D @types/node
``` 

```js
import path from "path"
import tailwindcss from "@tailwindcss/vite"
import react from "@vitejs/plugin-react"
import { defineConfig } from "vite"

// https://vite.dev/config/
export default defineConfig({
  plugins: [react(), tailwindcss()],
  resolve: {
    alias: {
      "@": path.resolve(__dirname, "./src"),
    },
  },
})
```

## 4. Importar Tailwind en los estilos

Reemplazá todo el contenido de `src/index.css` con:

```css
@import "tailwindcss";
```

## 5. Configurar el alias `@/` (jsconfig.json)

En proyectos con JavaScript, se utiliza `jsconfig.json` en la raíz del proyecto para que el editor (VS Code, Cursor, etc.) y las herramientas reconozcan el alias `@/*`.

Creá o editá el archivo `jsconfig.json` en la raíz:

```json
{
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  }
}
```

## 6. Inicializar shadcn/ui

Ejecutá el CLI de shadcn:

```bash
npx shadcn@latest init
```

Durante la configuración:
- Te preguntará si querés usar **TypeScript** o no. Seleccioná **No** (para usar JavaScript / JSX).
- Elegí el estilo y color base que prefieras.

## 7. Agregar componentes

Agregá tu primer componente (por ejemplo, `Button`):

```bash
npx shadcn@latest add button
```

Los componentes se descargarán con extensión `.jsx` dentro de `src/components/ui/`.

Podés agregar más componentes cuando los necesites:

```bash
npx shadcn@latest add card dialog table
```

## 8. Usar un componente

En `src/App.jsx`:

```jsx
import { Button } from "@/components/ui/button"

function App() {
  return (
    <div className="flex min-h-svh flex-col items-center justify-center">
      <Button>Click me</Button>
    </div>
  )
}

export default App
```

## 9. Levantar el servidor de desarrollo

```bash
npm run dev
```

## Resumen

| Paso | Comando | Descripción |
| --- | --- | --- |
| 1 | `npm create vite@latest mi-proyecto -- --template react` | Crea el proyecto Vite + React (JS) |
| 2 | `npm install tailwindcss @tailwindcss/vite` | Instala Tailwind CSS |
| 3-5 | — | Configuración de `vite.config.js`, `index.css` y `jsconfig.json` |
| 6 | `npx shadcn@latest init` | Inicializa shadcn/ui (elegir JavaScript) |
| 7 | `npx shadcn@latest add button` | Agrega componentes `.jsx` |
| 8-9 | `npm run dev` | Levanta el entorno de desarrollo |
