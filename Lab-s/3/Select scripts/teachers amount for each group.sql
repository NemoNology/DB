-- количество преподавателей для каждой группы по годам;
-- the number of teachers for each group by year;

SELECT "ID_Group", 
	COUNT(DISTINCT pd."ID_Professor") AS "p_am",
	"Semester number" AS sem_num

FROM "Load" l

JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"

GROUP BY "ID_Group", sem_num

ORDER BY "ID_Group"
;

WITH 
devider
AS
(
	SELECT COUNT (DISTINCT "Semester number") / 2 AS year 
	FROM "Load"
)

SELECT "ID_Group", 
	COUNT(DISTINCT pd."ID_Professor") AS "p_am",
	("Semester number" / devider.year) + 1 AS "Year by 2 semesters"

FROM "Load" l

JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"
CROSS JOIN devider

GROUP BY "ID_Group", "Year by 2 semesters"

ORDER BY "ID_Group"
;