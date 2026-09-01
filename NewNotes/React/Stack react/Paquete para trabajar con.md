React taillwin y libreria con modulos pree echos




## Dependencias para instalar
```js

npm install -D @types/node

npm install class-variance-authority clsx tailwind-merge lucide-react tw-animate-css




``` 


## Configuracion de rutas
```js
import path from "path"

import react from '@vitejs/plugin-react'

import { defineConfig } from 'vite'

  

// https://vite.dev/config/

export default defineConfig({

plugins: [react()],

resolve: {

alias: {

"@": path.resolve(__dirname, "./src"),

}

}

})


``` 


## Ejecutar
```js
// Par
npx shadcn@latest init -t [framework]
```