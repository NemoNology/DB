-- Представим, что нового преподователя нанимают раз в год
-- Imaginaze that new professor is hired once at year

-- trigger function
CREATE OR REPLACE FUNCTION increase_professors_age() 
RETURNS TRIGGER AS
$$
BEGIN

	UPDATE "Professor" SET "Age" = "Age" + 1;
	RETURN NEW;

END
$$
LANGUAGE plpgsql;

-- creating trigger
CREATE OR REPLACE TRIGGER on_insert_professor
	BEFORE INSERT ON "Professor"
	FOR EACH STATEMENT 
	EXECUTE PROCEDURE increase_professors_age();

SELECT * FROM "Professor" LIMIT 3;

--INSERT INTO "Professor" VALUES (DEFAULT, 'test', 'test', 'test', 72, False, 'test', 0);

--SELECT * FROM "Professor" LIMIT 3;

--DELETE FROM "Professor" * WHERE "First name" = 'test';
--UPDATE "Professor" SET "Age" = "Age" - 1;