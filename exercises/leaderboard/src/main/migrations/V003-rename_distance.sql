set database transaction control mvcc;
set database transaction rollback on conflict true;

DROP VIEW RESULT_VIEW;
ALTER TABLE RESULT ALTER COLUMN distance RENAME TO distance_km;
CREATE VIEW result_view AS
SELECT
    race_id,
    rider_id,
    distance_km AS distance_km
FROM
    RESULT;
