CREATE FUNCTION pgexporter_used_space(IN dir text) RETURNS bigint
AS 'MODULE_PATHNAME', 'pgexporter_ext_used_space'
LANGUAGE C STRICT;

REVOKE ALL ON FUNCTION pgexporter_used_space FROM PUBLIC;
GRANT EXECUTE ON FUNCTION pgexporter_used_space TO pg_monitor;

CREATE FUNCTION pgexporter_free_space(IN dir text) RETURNS bigint
AS 'MODULE_PATHNAME', 'pgexporter_ext_free_space'
LANGUAGE C STRICT;

REVOKE ALL ON FUNCTION pgexporter_free_space FROM PUBLIC;
GRANT EXECUTE ON FUNCTION pgexporter_free_space TO pg_monitor;

CREATE FUNCTION pgexporter_total_space(IN dir text) RETURNS bigint
AS 'MODULE_PATHNAME', 'pgexporter_ext_total_space'
LANGUAGE C STRICT;

REVOKE ALL ON FUNCTION pgexporter_total_space FROM PUBLIC;
GRANT EXECUTE ON FUNCTION pgexporter_total_space TO pg_monitor;
