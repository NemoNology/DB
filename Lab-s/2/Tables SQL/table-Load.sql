-- object: public."Load" | type: TABLE --
-- DROP TABLE IF EXISTS public."Load" CASCADE;
CREATE TABLE public."Load" (
	"ID" int8 NOT NULL GENERATED ALWAYS AS IDENTITY,
	"Week day" smallint NOT NULL DEFAULT 1,
	"Lesson number" smallint NOT NULL DEFAULT 1,
	"Semester number" smallint NOT NULL,
	"ID_Professor - Discipline" int8,
	"ID_Group" int4,
	CONSTRAINT "Load_pk" PRIMARY KEY ("ID")
);
-- ddl-end --
COMMENT ON TABLE public."Load" IS E'Нагрузка: Какой-то преподаватель ведёт какую-то дисциплину у какой-то группы\nLoad: Some professor teach some discipline for some group';
-- ddl-end --
COMMENT ON COLUMN public."Load"."ID" IS E'No comments';
-- ddl-end --
COMMENT ON COLUMN public."Load"."Week day" IS E'День недели, в который проводиться конкретная дисциплина конкретной группе конкретным преподователем\n1 - понедельник/Monday\n...\n7 - воскресенье/Sunday';
-- ddl-end --
COMMENT ON COLUMN public."Load"."Lesson number" IS E'Номер занятия для конкретной группы, конкретного дня недели, конкретной дисциплины, конкретного преподавателя\n1-ая пара/first lesson (time): 1\n...\nn-ая пара/n-st lesson (time): n';
-- ddl-end --
COMMENT ON COLUMN public."Load"."Semester number" IS E'Номер семестра, во время которой проводиться нагрузка\nThe number of the semester during which the load is carried out';
-- ddl-end --
ALTER TABLE public."Load" OWNER TO postgres;
-- ddl-end --

