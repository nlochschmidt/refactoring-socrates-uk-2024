set database transaction control mvcc;
set database transaction rollback on conflict true;

CREATE VIEW result_view AS
SELECT
    race_id,
    rider_id,
    distance AS distance_km
FROM
    RESULT;
