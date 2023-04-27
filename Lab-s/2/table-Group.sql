-- object: public."Group" | type: TABLE --
-- DROP TABLE IF EXISTS public."Group" CASCADE;
CREATE TABLE public."Group" (
	"ID" int4 NOT NULL GENERATED ALWAYS AS IDENTITY ,
	"Name" text NOT NULL,
	CONSTRAINT "Group_pk" PRIMARY KEY ("ID")

);
-- ddl-end --
COMMENT ON TABLE public."Group" IS E'Группа\nGroup';
-- ddl-end --
COMMENT ON COLUMN public."Group"."Name" IS E'Наименование\nName';
-- ddl-end --
ALTER TABLE public."Group" OWNER TO postgres;
-- ddl-end --

