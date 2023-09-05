-- максимальный непрерывный срок (количество лет) преподавания каждого преподавателя
-- maximum continuous period (number of years) of teaching for each teacher

WITH 
cont_flags1
AS
(
	SELECT p_id, s_n,
		CASE WHEN s_n + 1 = LEAD(s_n) 
		OVER(ORDER BY p_id, s_n)
		OR 
		s_n - 1 = LAG(s_n) 
		OVER(ORDER BY p_id, s_n)
		THEN 1 ELSE 0 END
		AS flag
	
	FROM 
		(
			SELECT p."ID" AS p_id, "Semester number" AS s_n
			FROM "Load" l

			JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"
			JOIN "Professor" p ON pd."ID_Professor" = p."ID"
			
			GROUP BY "Semester number", p."ID"
			ORDER BY p_id, s_n
		) t
	
	ORDER BY p_id, s_n
),
cont_flags2
AS
(
	SELECT p_id, SUM(flag) OVER (PARTITION BY p_id ORDER BY p_id, s_n) AS f_sum
	FROM cont_flags1
)

SELECT p."Patronymic" || ' ' || p."First name" AS name, MAX(f_sum) as max_cont_sem

FROM cont_flags2

JOIN "Professor" p ON p."ID" = p_id

GROUP BY p."Patronymic" || ' ' || p."First name"
;