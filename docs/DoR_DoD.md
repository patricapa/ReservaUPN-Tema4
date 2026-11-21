# Definition of Ready (DoR) y Definition of Done (DoD) - ReservaUPN

## Definition of Ready (DoR)
Una historia entra a un sprint solo si:

1. La historia sigue el formato «Como <rol>, quiero <acción>, para <beneficio>».
2. Cumple INVEST; si es mayor a 8 puntos se divide antes de entrar al sprint.
3. Tiene criterios de aceptación escritos en Gherkin y revisados por el Product Owner.
4. Sus dependencias están identificadas y resueltas o planificadas dentro del mismo sprint.
5. Fue estimada por el equipo (puntos de historia, escala Fibonacci).
6. Los diseños o prototipos necesarios están disponibles (si aplica).
7. El Product Owner confirmó su prioridad (MoSCoW / WSJF).

## Definition of Done (DoD)
Una historia está terminada solo si:

1. El código está integrado en la rama principal vía Pull Request con al menos 1 revisión.
2. Todos los escenarios Gherkin de la historia pasan (manual o automatizados).
3. Pruebas unitarias del código nuevo ejecutadas sin fallos.
4. Sin defectos críticos ni bloqueantes abiertos.
5. Funcionalidad desplegada en el ambiente de pruebas y validada por el Product Owner.
6. Documentación actualizada (README / backlog / criterios) y tarjeta movida a «Hecho».
7. Commit con mensaje descriptivo que referencia el ID de la historia (ej. «HU-03: valida solapamiento»).
