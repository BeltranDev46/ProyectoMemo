const contadorElement = document.getElementById('contador');
const incrementarElement = document.getElementById('incrementar');

async function actualizarContador()
{
    const response = await fetch('/contador');
    const data = await response.json();
    contadorElement.textContent = data.contador;
}

async function incrementarContador()
{
    try
    {
        await fetch('/incrementar', { method: 'GET' });
        actualizarContador();
    } catch (error)
    {
        console.error('Error al intentar incrementar el contador:', error);
    }
}

incrementarElement.addEventListener('click', incrementarContador);
actualizarContador();