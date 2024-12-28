/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
 

function toggleFields(option) {
    // Ocultar todos los campos adicionales
    document.getElementById('fields_opcion1').style.display = 'none';
    document.getElementById('fields_opcion2').style.display = 'none';

    // Mostrar los campos correspondientes a la opción seleccionada
    if (option === 'doctor') {
        document.getElementById('fields_opcion1').style.display = 'block';
    } else if (option === 'paciente') {
        document.getElementById('fields_opcion2').style.display = 'block';
    }
}

function setFormAction(option) {
    const form = document.getElementById('userForm');
    if (option === 'doctor') {
        form.action = 'interfaz_doctor.jsp';
    } else if (option === 'paciente') {
        form.action = 'interfaz_paciente.jsp';
    }
}
