-- 1 Approach with a separate role/connection for each customer/user.
-- Use table sources2:
-- User 1 should only see records with username = user1 (6 total).
set role user1;
select * from sources2;

-- User 2 should only see records with username = user2 (3 total).
set role user2;
select * from sources2;

-- Admin user should bypass RLS and see all records (9 total).
set role user_admin;
select * from sources2;



-- 2 Approach with a runtime variable defining the scope for RLS set
set role customer3;
set app.customer_id = 3;
-- The user should have access to only 1 record.
select * from sources3;

set app.customer_id = 1;
-- The user should have access to only 2 records


-- Confirm using sub-queries as the RLS works
set app.customer_id = None;
set role customer3;
-- The RLS policy is set up to allow access to sources table records for users/roles matching respective customer acronym
-- customer3 user should only have access to 1 record.
select * from sources1;