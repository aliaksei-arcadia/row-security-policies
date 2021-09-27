CREATE POLICY isolate_rows_by_subquery on rls.public.sources1
    USING (customer_id in (select id from customers where customers.acronym = current_user));
-- drop policy isolate_rows_by_subquery on rls.public.sources;

CREATE POLICY isolate_by_username on rls.public.sources2
    USING (username = current_user);
-- drop policy isolate_by_username on rls.public.sources;

CREATE POLICY isolate_by_app_variable ON rls.public.sources3
    USING (customer_id = current_setting('app.customer_id')::int);
-- drop policy isolate_by_app_variable on rls.public.sources;

ALTER ROLE user_admin bypassrls;
ALTER ROLE db_owner nobypassrls;
ALTER TABLE sources1 FORCE ROW LEVEL SECURITY;
ALTER TABLE sources2 FORCE ROW LEVEL SECURITY;
ALTER TABLE sources3 FORCE ROW LEVEL SECURITY;
ALTER TABLE sources1 ENABLE ROW LEVEL SECURITY;
ALTER TABLE sources2 ENABLE ROW LEVEL SECURITY;
ALTER TABLE sources3 ENABLE ROW LEVEL SECURITY;
