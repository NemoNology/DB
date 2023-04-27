-- object: public."Professor - Load" | type: TABLE --
-- DROP TABLE IF EXISTS public."Professor - Load" CASCADE;
CREATE TABLE public."Professor - Load" (
	"ID_Load" int4,
	"ID_Professor" int4,
	date smallint
);
-- ddl-end --
ALTER TABLE public."Professor - Load" OWNER TO postgres;
-- ddl-end --

