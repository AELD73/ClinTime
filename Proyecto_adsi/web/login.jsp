<%-- 
    Document   : login
    Created on : 7 dic 2024, 19:10:34
    Author     : lopez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <link rel="stylesheet" href="css/stylees_login.css"/>
    </head>
    <body>

        <div class="header">
            <div class="inner-header flex">
                <div class="footer-links">
                    <h4>ClinTim</h4>
                    <div class="social-links">
                        <div class="form-content1">
                            <form action="login_registrar.jsp" method="POST" >
                                <div class="form-content">
                                    <input type="text" name="correo" id="email" required>
                                    <label for="email">CORREO ELECTRONICO</label>
                                </div>

                                <div class="form-content">
                                    <input type="password" name="pasword" id="password" required>
                                    <label for="password">CONTRASEÑA</label>

                                </div>

                                <input class="btn1" type="submit" value="ENVIAR"> 
                            </form>


                        </div>
                        <p>¿Todavía no cuenta con una cuenta?</p>
                        <a class="registrarse" href="login_registrar.jsp">Registrate</a>
                    </div>
                </div>
            </div>

            <div>
                <svg class="waves" viewBox="0 24 150 28" preserveAspectRatio="none"
                     shape-rendering="auto">
                <defs>
                <path id="gentle-wave"
                      d="M-160 44c30 0 58-18 88-18s 58 18 88 18 58-18 88-18 58 18 88 18 v44h-352z"/>
                </defs>

                <g class="parallax">
                <use xlink:href="#gentle-wave" x="48" y="3" fill="rgba(255,255,255,0.5)"
                     />
                <use xlink:href="#gentle-wave" x="48" y="5" fill="rgba(255,255,255,0.3)"
                     />
                <use xlink:href="#gentle-wave" x="48" y="7" fill="rgba(255,255,255,0.7)"
                     />

                </g>
                </svg>

            </div>
        </div>

        <script src="js/formulario.js"></script>

    </body>
</html>
