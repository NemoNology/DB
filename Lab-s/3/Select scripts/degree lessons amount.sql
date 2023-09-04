-- среднее количество лекционных и лабораторных занятий в зависимости от должности преподавателей;
-- the average number of lectures and laboratory classes, depending on the teachers degree;

WITH
-- les_types_count_by_prof_degree
les_tc_false
AS
(
	SELECT 	pr."Academic degree" prof_degree, 
		COUNT(les."Type") AS les_count

	FROM "Load" l 

	JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"
	JOIN "Lesson" les ON pd."ID_Academic discipline" = les."ID" 
	JOIN "Professor" pr ON pd."ID_Professor" = pr."ID"

	WHERE les."Type" = FALSE

	GROUP BY prof_degree
),
les_tc_true
AS
(
	SELECT 	pr."Academic degree" prof_degree, 
		COUNT(les."Type") AS les_count

	FROM "Load" l 

	JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"
	JOIN "Lesson" les ON pd."ID_Academic discipline" = les."ID" 
	JOIN "Professor" pr ON pd."ID_Professor" = pr."ID"

	WHERE les."Type" = TRUE

	GROUP BY prof_degree
)

SELECT prof_degree, AVG(les_count)
FROM
(
	SELECT *
	FROM les_tc_false

	UNION 

	SELECT * 
	FROM les_tc_true
) tmp

GROUP BY prof_degree;