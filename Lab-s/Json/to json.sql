SELECT array_to_json(array_agg(row_to_json(t))) FROM 
	(
	SELECT p."Patronymic" || ' ' || p."First name" AS Name,
		COUNT(l."ID") AS "Lessons amount by semester",
		MAX("Lesson number") AS "The latest lesson by time at semester",
		"Semester number"

	FROM "Load" l

	JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"
	JOIN "Professor" p ON pd."ID_Professor" = p."ID"

	GROUP BY p."Patronymic" || ' ' || p."First name", "Semester number"

	ORDER BY Name, "Semester number") 
t;