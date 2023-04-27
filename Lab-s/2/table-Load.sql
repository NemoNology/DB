-- object: public."Load" | type: TABLE --
-- DROP TABLE IF EXISTS public."Load" CASCADE;
CREATE TABLE public."Load" (
	"ID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"Date" date NOT NULL,
	"ID_Professor" int4 NOT NULL,
	"ID_Group" int4 NOT NULL,
	"ID_Lesson" int4 NOT NULL,
	CONSTRAINT "Load_pk" PRIMARY KEY ("ID")

);
-- ddl-end --
COMMENT ON TABLE public."Load" IS E'Нагрузка\nLoad';
-- ddl-end --
ALTER TABLE public."Load" OWNER TO postgres;
-- ddl-end --

