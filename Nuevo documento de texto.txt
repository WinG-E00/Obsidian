module.exports = async (params) => {
    const { app } = params;

    const STORAGE_KEY = "quickadd_persistent_text";

    let savedText = localStorage.getItem(STORAGE_KEY);

    const change = await params.quickAddApi.yesNoPrompt(
        "¿Querés cambiar el texto guardado?",
        "Elegí 'No' para usar el actual"
    );

    if (change || !savedText) {
        savedText = await params.quickAddApi.inputPrompt(
            "Escribí el texto que querés guardar:"
        );

        if (!savedText) return;

        localStorage.setItem(STORAGE_KEY, savedText);
    }

    const file = app.workspace.getActiveFile();
    if (!file) {
        new Notice("No hay una nota activa");
        return;
    }

    let content = await app.vault.read(file);

    // 🔥 CLAVE: pegar al final de la última línea
    if (content.endsWith("\n")) {
        content += savedText;
    } else {
        content += " " + savedText;
    }

    await app.vault.modify(file, content);

    new Notice("Texto agregado al final de la última línea");
};