-- Обновление стажа работы преподавателя в зависимости от возраста
-- Update professor work experience by age


-- trigger function
CREATE OR REPLACE FUNCTION update_work_experience() 
RETURNS TRIGGER AS
$$
BEGIN

	IF (NEW."Age" - NEW."Work experience" < 14)
		THEN NEW."Work experience" = NEW."Age" - 14;
	END IF;
	
	RETURN NEW;

END
$$
LANGUAGE plpgsql;

-- creating trigger
CREATE OR REPLACE TRIGGER on_update_work_experience
	BEFORE INSERT OR UPDATE OF "Work experience" ON "Professor"
	FOR EACH ROW 
	EXECUTE PROCEDURE update_work_experience();
	
UPDATE "Professor" SET "Work experience" = 88 WHERE "ID" = 7; 