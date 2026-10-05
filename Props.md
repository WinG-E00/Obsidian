Simplemente seria el como un componente padre, cuando guarda atributos personalizados este guarda todo en un objeto lllamado props
```jsx
function App() {
  return (
    <div>
      {/* Pasamos los props 'nombre' y 'edad' */}
      <PerfilUsuario nombre="Sofía" edad={28} />
      <PerfilUsuario nombre="Carlos" edad={34} />
    </div>
  );
}

```


y en el hijo despues se pueden usar los props de este padre

```jsx

// El componente recibe un objeto 'props' como argumento
function PerfilUsuario(props) {
  return (
    <div className="card">
      <h2>Hola, {props.nombre}</h2>
      <p>Edad: {props.edad} años</p>
    </div>
  );
}

// También es muy común usar desestructuración directamente:
function PerfilUsuario({ nombre, edad }) {
  return (
    <div className="card">
      <h2>Hola, {nombre}</h2>
      <p>Edad: {edad} años</p>
    </div>
  );
}

```