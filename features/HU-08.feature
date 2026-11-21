# language: es
@HU-08 @sprint2 @should
Característica: Liberación automática por inasistencia
  Como sistema
  Quiero liberar una reserva sin check-in tras 15 minutos
  Para aprovechar cubículos que no se usan

  Escenario: Liberación por falta de check-in
    Dado que existe una reserva confirmada del cubículo "C-03" de 10:00 a 12:00
    Y nadie hizo check-in
    Cuando son las 10:16
    Entonces la reserva pasa a estado "No asistió"
    Y el cubículo "C-03" queda libre desde las 10:16

  Escenario: No se libera si hubo check-in
    Dado que existe una reserva del cubículo "C-03" de 10:00 a 12:00 en estado "En uso"
    Cuando son las 10:16
    Entonces la reserva se mantiene en estado "En uso"
