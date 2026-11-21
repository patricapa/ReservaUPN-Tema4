# language: es
@HU-11 @sprint1 @should
Característica: Límite diario de reservas por estudiante
  Como estudiante UPN
  Quiero que el sistema limite mis reservas a 2 horas por día
  Para evitar que unos pocos acaparen los cubículos

  Antecedentes:
    Dado que inicié sesión como "ana@upn.pe"
    Y ya tengo 1 hora reservada el 25/11/2026

  Escenario: Reserva dentro del límite diario
    Cuando reservo 1 hora adicional el 25/11/2026
    Entonces la reserva queda en estado "Confirmada"

  Escenario: Reserva que excede el límite diario
    Cuando intento reservar 2 horas adicionales el 25/11/2026
    Entonces el sistema muestra "Superas el límite de 2 horas por día"
    Y no se crea la reserva
