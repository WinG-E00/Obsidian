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
// Para instalar la libreria en framework hay que poner por ejemplo vite
npx shadcn@latest init -t [framework]
```

#### Dependencias para la libreria
```js
npm install -D tailwindcss postcss autoprefixer
//archivos de configuracion
npx tailwindcss init -p
``` 


