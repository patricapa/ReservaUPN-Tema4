# language: es
@HU-01 @sprint1 @must
Característica: Inicio de sesión con correo institucional
  Como estudiante UPN
  Quiero iniciar sesión con mi correo institucional (@upn.pe)
  Para que solo la comunidad universitaria acceda a las reservas

  Escenario: Acceso exitoso con correo institucional
    Dado que tengo una cuenta registrada con "ana@upn.pe"
    Cuando ingreso "ana@upn.pe" y mi contraseña correcta
    Entonces accedo a la pantalla "Disponibilidad de cubículos"
    Y veo mi nombre en la barra superior

  Escenario: Rechazo de un correo no institucional
    Dado que estoy en la pantalla de registro
    Cuando intento registrarme con "ana@gmail.com"
    Entonces el sistema muestra "Usa tu correo institucional @upn.pe"
    Y no se crea ninguna cuenta

  Escenario: Bloqueo temporal tras intentos fallidos
    Dado que tengo una cuenta registrada con "ana@upn.pe"
    Cuando fallo la contraseña 5 veces seguidas
    Entonces la cuenta se bloquea por 15 minutos
    Y el sistema muestra "Cuenta bloqueada temporalmente"
