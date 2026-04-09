module.exports = async (params) => {
    const STORAGE_KEY = "quickadd_persistent_text";

    const newText = await params.quickAddApi.inputPrompt(
        "Escribí el texto que querés guardar:"
    );

    if (!newText) return;

    localStorage.setItem(STORAGE_KEY, newText);

    new Notice("Texto guardado correctamente");
};