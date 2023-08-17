-- object: public."Lesson" | type: TABLE --
-- DROP TABLE IF EXISTS public."Lesson" CASCADE;
CREATE TABLE public."Lesson" (
	"ID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"Name" text NOT NULL,
	"Type" bool,
	"Number of hours" int2,
	CONSTRAINT "Lesson_pk" PRIMARY KEY ("ID")

);
-- ddl-end --
COMMENT ON TABLE public."Lesson" IS E'Занятие\nLesson';
-- ddl-end --
COMMENT ON COLUMN public."Lesson"."Name" IS E'Наименование\nName';
-- ddl-end --
COMMENT ON COLUMN public."Lesson"."Type" IS E'Тип занятия: лекция/практика\nLesson type: lecture/practice';
-- ddl-end --
COMMENT ON COLUMN public."Lesson"."Number of hours" IS E'Кол-во часов\nNumber of hours';
-- ddl-end --
ALTER TABLE public."Lesson" OWNER TO postgres;
-- ddl-end --

