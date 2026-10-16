```js

// 1. Actualizar uno por condición
await Usuario.updateOne(
    { nombre: "Gaston" },
    { $set: { edad: 22 } }
);

// 2. Actualizar varios
await Usuario.updateMany(
    { activo: false },
    { $set: { activo: true } }
);

// 3. Actualizar por ID
await Usuario.findByIdAndUpdate(
    id,
    { $set: { edad: 23 } },
    { new: true, runValidators: true }
);

// 4. Buscar y actualizar por condición
await Usuario.findOneAndUpdate(
    { email: "test@gmail.com" },
    { $set: { nombre: "Pedro" } },
    { new: true }
);

// 5. Reemplazar documento completo
await Usuario.replaceOne(
    { nombre: "Gaston" },
    { nombre: "Juan", edad: 25 }
);

// 6. Buscar y reemplazar documento
await Usuario.findOneAndReplace(
    { nombre: "Gaston" },
    { nombre: "Lucas", edad: 24 }
);

// 7. Modificar y guardar
const usuario = await Usuario.findById(id);

if (usuario) {
    usuario.edad = 25;
    await usuario.save();
}

// 8. Actualizar documento obtenido
const usuario2 = await Usuario.findById(id);

if (usuario2) {
    await usuario2.updateOne({ $set: { edad: 26 } });
}

// 9. Actualizaciones masivas
await Usuario.bulkWrite([
    {
        updateOne: {
            filter: { nombre: "Juan" },
            update: { $set: { edad: 30 } }
        }
    },
    {
        updateMany: {
            filter: { activo: false },
            update: { $set: { activo: true } }
        }
    }
]);



```