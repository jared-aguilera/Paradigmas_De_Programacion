// Función para cambiar de capítulo en la vista
function verCapitulo(num) {
    // 1. Quitar 'active' de todos los botones
    document.querySelectorAll('.nav-btn').forEach(btn => btn.classList.remove('active'));
    // 2. Poner 'active' al botón clickeado
    document.getElementById(`btn-cap-${num}`).classList.add('active');
    
    // Aquí podrías ocultar/mostrar secciones de capítulo si decides
    // tener todas en el mismo HTML.
    console.log(`Cambiando al capítulo ${num}`);
}

// Función para enviar datos a Haskell
async function ejecutar(cap, ej) {
    const val = document.getElementById(`input-${cap}-${ej}`).value;
    const resElement = document.getElementById(`res-${cap}-${ej}`);
    
    if (!val) return alert("Por favor ingresa un valor");

    resElement.innerText = "Calculando...";

    try {
        const response = await fetch(`/ejecutar/${cap}/${ej}?valor=${val}`, {
            method: 'POST'
        });
        const data = await response.json();
        resElement.innerText = data.res;
    } catch (error) {
        resElement.innerText = "Error en el servidor";
        console.error(error);
    }
}