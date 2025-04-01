-- Create the database
CREATE DATABASE accounts;

-- Optional: Create a new role (user)
CREATE ROLE devuser WITH LOGIN PASSWORD 'ipZna8t*TJ4Cy*sqquyH';

-- Grant privileges on the new database to the new user
GRANT ALL PRIVILEGES ON DATABASE accounts TO devuser;

-- Ensure gen_random_uuid() is enabled in your PostgreSQL if you are using UUIDs.
CREATE EXTENSION IF NOT EXISTS pgcrypto;

-- Create a new schema
CREATE SCHEMA accounts;

-- Grant privileges to a user (replace 'your_user' with the actual user)
GRANT USAGE, CREATE ON SCHEMA accounts TO devuser;

-- Grant privileges to the user on the tables within the accounts schema
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA accounts TO devuser;

-- Grant privileges on future tables in the schema
ALTER DEFAULT PRIVILEGES IN SCHEMA accounts GRANT SELECT, INSERT, UPDATE, DELETE ON TABLES TO devuser;

GRANT ALL PRIVILEGES ON TABLE accounts TO devuser;


