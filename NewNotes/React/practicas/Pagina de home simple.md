# Página de Home Simple

Wireframe de una página de home para una **guardería infantil**.

## Estructura básica

```
┌─────────────────────────────────────────────────────────────┐
│  LOGO "Mi Guardería"      Inicio | Turnos | Cuidados | +    │
├─────────────────────────────────────────────────────────────┤
│                                                             │
│   HERO: "Descubrí un lugar seguro para tus hijos"           │
│   Subtítulo + Botón "Reservar visita"                       │
│                                                             │
;   [ Imagen de niños jugando ]                               │
│                                                             │
├─────────────────────────────────────────────────────────────┤
│  SOBRE NOSOTROS                                             │
│   Texto breve + imagen                                      │
├─────────────────────────────────────────────────────────────┤
│  SERVICIOS                                                 │
│   [Guardería]  [Talleres]   [Cuidado]                       │
│   [ a tiempo  ]  [ creativos ] [ por hora]                  │
│   [  completo ]                [ de tarde ]                 │
├─────────────────────────────────────────────────────────────┤
│  TESTIMONIOS                                                │
│   "Excelente trato"  "Mi hija feliz"  "Recomendable"        │
├─────────────────────────────────────────────────────────────┤
│  CONTACTO                                                   │
│   Formulario: Nombre | Email | Mensaje  +  Botón "Enviar"   │
├─────────────────────────────────────────────────────────────┤
│  FOOTER                                                     │
│   © 2026 Mi Guardería | Links | Redes                       │
└─────────────────────────────────────────────────────────────┘
```

## Secciones que se repiten en una home

| Sección | Componente shadcn sugerido | Contenido |
| ------- | -------------------------- | --------- |
| Navegación | `navigation-menu` | Logo + links del sitio |
| Hero | `button` + `badge` | Título, subtítulo y CTA |
| Sobre nosotros | `card` | Texto de presentación |
| Servicios | `card` + `card-header` | Tarjetas con cada servicio |
| Testimonios | `card` + `avatar` | Opiniones de padres |
| Contacto | `input` + `textarea` + `button` | Formulario |
| Footer | `separator` | Datos de contacto y links |

## Idea de layout con Tailwind (prototipo)

```tsx
<div className="min-h-svh flex flex-col">
  <header className="flex items-center justify-between px-8 py-4">
    <span className="text-lg font-bold">Mi Guardería</span>
    <nav className="flex gap-4">...</nav>
  </header>

  <main className="flex flex-1 flex-col gap-16 px-8 py-12">
    <section>Hero</section>
    <section>Sobre nosotros</section>
    <section className="grid md:grid-cols-3 gap-4">Servicios</section>
    <section>Testimonios</section>
    <section>Contacto</section>
  </main>

  <footer className="px-8 py-4">...</footer>
</div>
```

> Idea: este wireframe puede servir de guía para armar el componente en React con Tailwind y shadcn/ui.