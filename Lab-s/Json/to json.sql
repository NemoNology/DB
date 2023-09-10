SELECT json_agg(info) FROM
( 
	SELECT json_build_object( 
		'Name', "Patronymic" || ' ' || "First name", 
		'Lessons (lecture)', json_agg(json_build_object( 
				'Name', les."Name",
				'Number of hours', les."Number of hours"
			) 
		) 
	) AS "Professors info"
	FROM "Professor" p	

	JOIN "Professor - Discipline" pd ON p."ID" = pd."ID_Professor"
	JOIN "Lesson" les ON pd."ID_Academic discipline" = les."ID"

	WHERE les."Type" = False

	GROUP BY "Patronymic" || ' ' || "First name"
	ORDER BY "Patronymic" || ' ' || "First name"

	LIMIT 3

) info;