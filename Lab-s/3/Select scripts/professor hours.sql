-- суммарное количество часов, запланированное на каждого преподавателя;
-- the total number of hours planned for each teacher;

SELECT "Patronymic" || ' ' || "First name" AS "Name", SUM(l."Number of hours") AS "Total hours"
FROM "Professor" p

JOIN "Professor - Discipline" pd ON p."ID" = pd."ID_Professor"
JOIN "Lesson" l ON pd."ID_Academic discipline" = l."ID"

GROUP BY "Patronymic" || ' ' || "First name"
ORDER BY "Name";