-- Проверка занятости преподователя по нагрузке (Load)
-- Check professor busy by Load

CREATE OR REPLACE FUNCTION insert_load_row()
RETURNS TRIGGER AS
$$
BEGIN

	SELECT MAX(count) 
	FROM (SELECT COUNT(pd."ID_Professor") AS count
				FROM "Load" l
				JOIN "Professor - Discipline" pd ON l."ID_Professor - Discipline" = pd."ID"

				-- UNCOMPLETED...
				GROUP BY l."Semester number", l."Week day", l."Lesson number";
			) 

	IF n > 1 THEN
		RAISE EXCEPTION 'Error: Professor is busy at that time with that group';
	END IF;
	
	RETURN NEW;

END
$$
LANGUAGE plpgsql; 

CREATE OR REPLACE TRIGGER on_insert_load_row
BEFORE INSERT ON "Load"
FOR EACH ROW 
EXECUTE PROCEDURE insert_load_row();