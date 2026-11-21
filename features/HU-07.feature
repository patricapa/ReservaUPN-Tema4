# language: es
@HU-07 @sprint2 @should
Característica: Check-in con código QR
  Como estudiante UPN
  Quiero hacer check-in escaneando un código QR en el cubículo
  Para confirmar que ocupo mi reserva

  Antecedentes:
    Dado que inicié sesión como "ana@upn.pe"
    Y tengo una reserva confirmada del cubículo "C-03" de 10:00 a 12:00

  Escenario: Check-in dentro de la ventana permitida
    Cuando escaneo el QR del cubículo "C-03" a las 10:05
    Entonces mi reserva pasa a estado "En uso"

  Escenario: Check-in fuera de la ventana permitida
    Cuando escaneo el QR del cubículo "C-03" a las 09:30
    Entonces el sistema muestra "El check-in se habilita 10 minutos antes"
    Y la reserva sigue en estado "Confirmada"
