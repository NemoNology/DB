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

WITH 
extra
AS
(
	SELECT pd."ID_Professor" AS id_p, 
		COUNT(l."ID") AS les_am, 
		MAX("Lesson number") AS latest_les, 
		"Semester number" AS sem_num
	FROM "Load" l

	JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"

	GROUP BY pd."ID_Professor", "Semester number"

	ORDER BY id_p, "Semester number"
)

SELECT info FROM
( 
	
	SELECT json_build_object( 
		'Name', p."ID",--p."Patronymic" || ' ' || p."First name",
		'Semesters', json_agg(json_build_object( 
			'Number', "Semester number",
			'Info', json_build_object('Les am', les_am, 'Max', latest_les) 
		)) 
			 
	) AS Info
	FROM "Load" l

	JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"
	JOIN "Professor" p ON pd."ID_Professor" = p."ID"
	JOIN extra e ON pd."ID_Professor" = e.id_p

	GROUP BY p."ID"--p."Patronymic" || ' ' || p."First name"

	ORDER BY p."ID"--p."Patronymic" || ' ' || p."First name"
	
	LIMIT 2

) info;