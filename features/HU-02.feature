# language: es
@HU-02 @sprint1 @must
Característica: Consulta de disponibilidad de cubículos
  Como estudiante UPN
  Quiero consultar la disponibilidad de cubículos por fecha y hora
  Para encontrar un espacio libre sin ir a la biblioteca

  Antecedentes:
    Dado que inicié sesión como "ana@upn.pe"
    Y existen 10 cubículos activos con horario de 08:00 a 21:00

  Escenario: Ver cubículos libres en una franja
    Cuando consulto el 25/11/2026 de 10:00 a 12:00
    Entonces veo la lista de cubículos libres en esa franja
    Y cada cubículo muestra su capacidad

  Escenario: No hay cubículos disponibles
    Dado que los 10 cubículos están reservados el 25/11/2026 de 10:00 a 12:00
    Cuando consulto el 25/11/2026 de 10:00 a 12:00
    Entonces el sistema muestra "No hay cubículos disponibles en este horario"
    Y sugiere las 3 franjas libres más cercanas

  Escenario: Filtrar por capacidad
    Cuando consulto el 25/11/2026 de 10:00 a 12:00 filtrando por capacidad mínima 4
    Entonces solo veo cubículos con capacidad de 4 o más personas
