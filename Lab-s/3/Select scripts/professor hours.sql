SELECT "Patronymic", "First name", SUM(l."Number of hours") AS "Total hours"
FROM "Professor" p

JOIN "Professor - Discipline" pd ON p."ID" = pd."ID_Professor"
JOIN "Load" ld ON pd."ID" = ld."ID_Professor - Discipline"
JOIN "Lesson" l ON pd."ID_Academic discipline" = l."ID"

GROUP BY pd."ID_Professor", p."First name", p."Patronymic"
ORDER BY p."Patronymic";