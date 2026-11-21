# language: es
@HU-03 @sprint1 @must
Característica: Reserva de un cubículo
  Como estudiante UPN
  Quiero reservar un cubículo en una franja horaria libre
  Para asegurar mi lugar de estudio

  Antecedentes:
    Dado que inicié sesión como "ana@upn.pe"
    Y no tengo reservas el 25/11/2026

  Escenario: Reserva exitosa
    Dado que el cubículo "C-03" está libre el 25/11/2026 de 10:00 a 12:00
    Cuando reservo el cubículo "C-03" para esa franja
    Entonces la reserva queda en estado "Confirmada"
    Y el cubículo "C-03" aparece ocupado en esa franja

  Escenario: Conflicto de horario con otra reserva
    Dado que el cubículo "C-03" ya está reservado el 25/11/2026 de 11:00 a 13:00
    Cuando intento reservar el cubículo "C-03" el 25/11/2026 de 10:00 a 12:00
    Entonces el sistema rechaza la reserva
    Y muestra "El cubículo ya no está disponible en ese horario"

  Escenario: Reserva fuera del horario de atención
    Cuando intento reservar el cubículo "C-03" el 25/11/2026 de 21:00 a 22:00
    Entonces el sistema muestra "El horario de atención es de 08:00 a 21:00"
    Y no se crea ninguna reserva
