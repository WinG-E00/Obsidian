module.exports = async (params) => {
    const { app } = params;

    const STORAGE_KEY = "quickadd_persistent_text";
    const savedText = localStorage.getItem(STORAGE_KEY);

    if (!savedText) {
        new Notice("No hay texto guardado. Usá el comando de configurar.");
        return;
    }

    const file = app.workspace.getActiveFile();
    if (!file) {
        new Notice("No hay una nota activa");
        return;
    }

    let content = await app.vault.read(file);

    // pegar al final de la última línea
    if (content.endsWith("\n")) {
        content += savedText;
    } else {
        content += " " + savedText;
    }

    await app.vault.modify(file, content);

    new Notice("Texto agregado");
};