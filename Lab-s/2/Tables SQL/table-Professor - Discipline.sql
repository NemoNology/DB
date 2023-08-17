-- object: public."Professor - Discipline" | type: TABLE --
-- DROP TABLE IF EXISTS public."Professor - Discipline" CASCADE;
CREATE TABLE public."Professor - Discipline" (
	"ID" int8 NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"ID_Professor" int4 NOT NULL,
	"ID_Academic discipline" int4 NOT NULL,
	CONSTRAINT "Professor - Lesson_pk" PRIMARY KEY ("ID")

);
-- ddl-end --
COMMENT ON TABLE public."Professor - Discipline" IS E'Ограничение цлостности: Может ли преподаватель по математике вести лекции по русскому языку? - Нет';
-- ddl-end --
COMMENT ON COLUMN public."Professor - Discipline"."ID" IS E'Идентификатор для пары Преподователь и преподаваемая им Дисциплина у определённой группы';
-- ddl-end --
ALTER TABLE public."Professor - Discipline" OWNER TO postgres;
-- ddl-end --

