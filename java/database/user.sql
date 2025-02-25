-- ********************************************************************************
-- This script creates the database users and grants them the necessary permissions
-- ********************************************************************************

CREATE USER homecrafted_owner
WITH PASSWORD 'homecrafted';

GRANT ALL
ON ALL TABLES IN SCHEMA public
TO homecrafted_owner;

GRANT ALL
ON ALL SEQUENCES IN SCHEMA public
TO homecrafted_owner;

CREATE USER homecrafted_appuser
WITH PASSWORD 'homecrafted';

GRANT SELECT, INSERT, UPDATE, DELETE
ON ALL TABLES IN SCHEMA public
TO homecrafted_appuser;

GRANT USAGE, SELECT
ON ALL SEQUENCES IN SCHEMA public
TO homecrafted_appuser;
