-- **************************************************************
-- This script destroys the database and associated users
-- **************************************************************

-- The following line terminates any active connections to the database so that it can be destroyed
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'homecrafted';

DO $$
BEGIN
    EXECUTE 'DROP SCHEMA public CASCADE';
END $$;

DROP DATABASE IF EXISTS homecrafted;

DROP USER IF EXISTS homecrafted_owner;
DROP USER IF EXISTS homecrafted_appuser;
