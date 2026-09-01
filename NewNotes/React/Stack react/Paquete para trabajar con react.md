# Paquete para trabajar con React

Guía paso a paso para crear un proyecto **Vite + React + Tailwind + shadcn/ui**.

> Documentación oficial: [shadcn/ui — Vite](https://ui.shadcn.com/docs/installation/vite)

## 1. Crear el proyecto con Vite

Ejecutá el siguiente comando y seleccioná la plantilla **React + TypeScript**:

```bash
npm create vite@latest
```

Al finalizar, entrá a la carpeta del proyecto e instalá las dependencias:

```bash
cd tu-proyecto
npm install
```

## 2. Instalar Tailwind CSS

Instalá Tailwind CSS v4 con el plugin de Vite:

```bash
npm install tailwindcss @tailwindcss/vite
```

## 3. Configurar Vite

Abrí `vite.config.ts` y reemplazá todo su contenido con esto:

```ts
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

> Necesitás `@types/node` para que `path` y `__dirname` funcionen:
>
> ```bash
> npm install -D @types/node
> ```

## 4. Importar Tailwind en los estilos

Reemplazá todo el contenido de `src/index.css` con:

```css
@import "tailwindcss";
```

## 5. Configurar el alias `@/`

El alias `@/*` apunta a la carpeta `src/*`. Hay que agregarlo en los dos archivos de TypeScript.

En `tsconfig.json`:

```json
{
  "files": [],
  "references": [
    {
      "path": "./tsconfig.app.json"
    },
    {
      "path": "./tsconfig.node.json"
    }
  ],
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@/*": ["./src/*"]
    }
  }
}
```

En `tsconfig.app.json`, dentro de `compilerOptions`:

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

Ejecutá el CLI de shadcn para iniciar la configuración:

```bash
npx shadcn@latest init
```

Seguí las instrucciones que te pide (base color, estilo, etc.).

## 7. Agregar componentes

Agregá el primer componente (por ejemplo, `Button`):

```bash
npx shadcn@latest add button
```

Agregá más componentes cuando los necesites (card, dialog, table, etc.):

```bash
npx shadcn@latest add card dialog table
```

## 8. Usar un componente

En `src/App.tsx`:

```tsx
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

| Paso   | Comando                                       | Descripción                        |
| ------ | --------------------------------------------- | ---------------------------------- |
| 1      | `npm create vite@latest`                      | Crea el proyecto Vite + React + TS |
| 2      | `npm install tailwindcss @tailwindcss/vite`   | Instala Tailwind                   |
| 3-5    | —                                             | Configuración manual de archivos   |
| 6      | `npx shadcn@latest init`                      | Inicializa shadcn/ui               |
| 7      | `npx shadcn@latest add button`                | Agrega componentes                 |
| 8-9    | `npm run dev`                                 | Levanta el proyecto                |