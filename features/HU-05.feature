# language: es
@HU-05 @sprint1 @must
Característica: Cancelación de una reserva
  Como estudiante UPN
  Quiero cancelar una reserva con al menos 2 horas de anticipación
  Para liberar el cubículo para otros estudiantes

  Antecedentes:
    Dado que inicié sesión como "ana@upn.pe"

  Escenario: Cancelación con anticipación suficiente
    Dado que tengo una reserva confirmada que empieza en 3 horas
    Cuando cancelo la reserva
    Entonces la reserva pasa a estado "Cancelada"
    Y el cubículo queda libre en esa franja

  Escenario: Cancelación con menos de 2 horas de anticipación
    Dado que tengo una reserva confirmada que empieza en 1 hora
    Cuando intento cancelar la reserva
    Entonces el sistema muestra "Solo puedes cancelar hasta 2 horas antes"
    Y la reserva sigue en estado "Confirmada"
