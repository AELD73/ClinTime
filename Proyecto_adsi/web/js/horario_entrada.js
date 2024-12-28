/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


document.addEventListener("DOMContentLoaded", function () {
    const horarioSelect = document.getElementById("horario_entrada");

    // Generar opciones desde 00:00 hasta 23:30 en incrementos de 30 minutos
    for (let hora = 0; hora < 24; hora++) {
        for (let minuto = 0; minuto < 60; minuto += 30) {
            // Formatear hora y minuto a dos dígitos
            const horaFormateada = (hora < 10 ? "0" : "") + hora;
            const minutoFormateado = (minuto < 10 ? "0" : "") + minuto;

            // Concatenar los valores correctamente
            const opcion = `${horaFormateada}:${minutoFormateado}`;

            // Crear opción y agregarla al combo box
            const optionElement = document.createElement('option');
            optionElement.value = opcion;
            optionElement.textContent = opcion;
            horarioSelect.appendChild(optionElement);
        }
    }
});