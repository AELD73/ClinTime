<%-- 
    Document   : login_registrar
    Created on : 8 dic. 2024, 13:04:28
    Author     : angel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/stylee_registrarse.css"/>
        <title>registrar</title>
    </head>
    <body>

        <div class="titulo">
            <h1></h1>

        </div>

        <div class="contendedor_principal">


            <div class="footer-links">
                <h4>REGISTRO DE DATOS</h4>
                <p class="campo_obligatorio">*=campos obligatorios</p>
                <div class="social-links">
                    <div class="form-content1">
                        <form id="userForm" method="POST" >
                            <div class="form-content">
                                <input type="text" name="name" id="nombre_usuario" required>
                                <label for="name">NOMBRE *</label>
                            </div>

                            <div class="form-content">
                                <input type="text" name="apellido1" id="primer_apellido" required>
                                <label for="apellido1">APELLIDO PATERNO *</label>
                            </div>
                            <div class="form-content">
                                <input type="text" name="apellido2" id="segundo_apellido" required>
                                <label for="apellido2">APELLIDO MATERNO *</label>
                            </div>
                            <div class="form-content">
                                <input type="text" name="correo" id="correo" required>
                                <label for="email">CORREO ELECTRONICO *</label>
                            </div>
                            <div class="form-content">
                                <input type="text" name="telefono" id="telefono" required>
                                <label for="telefono">NUMERO TELEFONICO *</label>
                            </div>


                            <div class="form-content-edad-FN">
                                <div class="form-content-edad">
                                    <input type="text" name="edad" id="edad" required>
                                    <label for="edad">EDAD *</label>
                                </div>

                                <div class="form-content-FN">

                                    <label for="fecha_nacimiento">FECHA NACIMIENTO</label>
                                    <div>
                                        <select id="dia" name="dia">
                                            <option value="">DIA</option>
                                        </select>

                                        <select id="mes" name="mes">
                                            <option value="">MES</option>
                                            <option value="1">Enero</option>
                                            <option value="2">Febrero</option>
                                            <option value="3">Marzo</option>
                                            <option value="4">Abril</option>
                                            <option value="5">Mayo</option>
                                            <option value="6">Junio</option>
                                            <option value="7">Julio</option>
                                            <option value="8">Agosto</option>
                                            <option value="9">Septiembre</option>
                                            <option value="10">Octubre</option>
                                            <option value="11">Noviembre</option>
                                            <option value="12">Diciembre</option>
                                        </select>

                                        <select id="anio" name="anio">
                                            <option value="">AÑO</option>
                                        </select> 
                                    </div>

                                </div>


                            </div>
                            <!-- Radio Buttons -->
                            <div class="form-content-est">
                                <label>Tipo de usuario...</label>
                                <div class="radio_group">
                                    <div class="radio_button">
                                        <input type="radio" name="option" id="opcion1" value="doctor" onchange="toggleFields(this.value); setFormAction(this.value);" >
                                        <label for="opcion1">Doctor</label>
                                    </div>
                                    <div class="radio_button">
                                        <input type="radio" name="option" id="opcion2" value="paciente" onchange="toggleFields(this.value); setFormAction(this.value);" >
                                        <label for="opcion2">Paciente</label>
                                    </div>
                                </div>
                            </div>



                            <!-- Campos adicionales para Opción 1 -->
                            <div id="fields_opcion1" style="display: none;">
                                <div class="form-content">
                                    <input type="text" name="campo_extra1" id="campo_extra1">
                                    <label for="campo_extra1">Número de cedula *</label>
                                </div>

                                <!-- combo-box horario de entrada y salida-->
                                <div class="form-content-horaio-atencion-entrada"> 
                                    <label for="campo_extra2">Horario de atención*</label>

                                    <select id="horario_entrada" name="horario_entrada">
                                        <option value="">Entrada</option>
                                    </select> 
                                    <select id="horario_salida" name="horario_salida">
                                        <option value="">Salida</option>
                                    </select>
                                </div>

                                <script src="js/horario_entrada.js"></script>
                                <script src="js/horario_salida.js"></script>

                                <!-- Check boxes para días de atención-->
                                <div class="form-content-dias-atencion"> 

                                    <label for="campo_extra2">Días de atención *</label>
                                    <div class="checkboxes">
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="lunes">
                                            L
                                        </label>
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="martes">
                                            M
                                        </label>
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="mieroles">
                                            Mi
                                        </label>
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="jueves">
                                            J
                                        </label>
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="viernes">
                                            V
                                        </label>
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="lunes">
                                            S
                                        </label>
                                        <label id="dia_semana">
                                            <input type="checkbox" name="dias_atencion" value="lunes">
                                            D
                                        </label> 
                                    </div>

                                </div>

                                <!-- Dato de dirección-->
                                <div class="form-content"> 
                                    <input type="text" name="campo_extra4" id="campo_extra4">
                                    <label for="campo_extra2">Calle y número principal*</label>
                                </div>
                                <div class="form-content">
                                    <input type="text" name="campo_extra5" id="campo_extra6">
                                    <label for="campo_extra2">Ciudad *</label>
                                </div>
                                <div class="form-content">
                                    <input type="text" name="campo_extra2" id="campo_extra2">
                                    <label for="campo_extra2">Colonia / Delegación *</label>
                                </div>
                                <div class="form-content">
                                    <input type="text" name="campo_extra2" id="campo_extra2">
                                    <label for="campo_extra2">Estado *</label>
                                </div>
                                <div class="form-content"> <!--Opcional para colocar el país-->
                                    <input type="text" name="campo_extra2" id="campo_extra2">
                                    <label for="campo_extra2">Pais *</label>
                                </div>
                                <div class="form-content">
                                    <input type="text" name="campo_extra2" id="campo_extra2">
                                    <label for="campo_extra2">Codigo Postal *</label>
                                </div>

                            </div>

                            <!-- Campos adicionales para Opción 2 -->
                            <div id="fields_opcion2" style="display: none;">

                            </div>

                            <input class="btn1" type="submit" value="ENVIAR">
                        </form>
                        <script src="js/radio_buttons.js">
                                          
                        </script>
                        <script src="js/fecha_nacimiento.js"></script>
                    </div>

                </div>
            </div>

        </div>



    </body>
</html>
