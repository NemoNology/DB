-- object: public."Professor" | type: TABLE --
-- DROP TABLE IF EXISTS public."Professor" CASCADE;
CREATE TABLE public."Professor" (
	"ID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"First name" text NOT NULL,
	"Second name" text NOT NULL,
	"Patronymic" text NOT NULL,
	"Age" smallint NOT NULL,
	"Sex" bool,
	"Post" text NOT NULL,
	"Work experience" int4,
	CONSTRAINT "Professor_pk" PRIMARY KEY ("ID")

);
-- ddl-end --
COMMENT ON TABLE public."Professor" IS E'Маленька БД "Преподователь\nSmall DB "Professor"';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."ID" IS E'Идентификационный номер/Ключ\nID';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."First name" IS E'Имя\nFirst name';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Second name" IS E'Фамилия\nSecond name';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Patronymic" IS E'Отчество\nPatronymic';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Age" IS E'Возраст\nAge';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Sex" IS E'Пол\nSex';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Academic degree" IS E'Учёная степень \nAcademic degree';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Post" IS E'Должность\nPost';
-- ddl-end --
COMMENT ON COLUMN public."Professor"."Work experience" IS E'Стаж работы\nWork experience';
-- ddl-end --
ALTER TABLE public."Professor" OWNER TO postgres;
-- ddl-end --

