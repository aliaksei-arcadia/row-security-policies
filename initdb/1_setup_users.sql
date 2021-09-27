create role user1;
create role user2;
create role customer3;
create role user_admin;

GRANT SELECT, UPDATE, INSERT, DELETE ON ALL TABLES IN SCHEMA public TO user1, user2, user_admin, customer3;
GRANT SELECT, USAGE ON ALL SEQUENCES IN SCHEMA public TO  user1, user2, user_admin, customer3;
GRANT USAGE ON SCHEMA public TO  user1, user2, user_admin, customer3;
ALTER USER user1 SET SEARCH_PATH = public;
ALTER USER user2 SET SEARCH_PATH = public;
ALTER USER user_admin SET SEARCH_PATH = public;
ALTER USER customer3 SET SEARCH_PATH = public;
