WITH double_candidates AS (
    SELECT COUNT(distinct a1.candidate_id) AS CNT
    FROM applications a1
    JOIN applications a2 on a1.candidate_id = a2.candidate_id
    WHERE a1.job_id != a2.job_id
),
all_app as (
    SELECT COUNT(distinct id) AS CNT
    FROM applications
)
SELECT CAST(double_candidates.CNT AS FLOAT) / CAST(all_app.CNT AS FLOAT)
FROM all_app
JOIN double_candidates ON true;


WITH candidates AS (
    SELECT users.id, users.region, a.id as can_a_id
    FROM Users
    JOIN applications a on users.id = a.candidate_id
),
vacantions AS (
    SELECT jobs.region, a.id as vac_a_id
    FROM jobs
    JOIN applications a on jobs.id = a.job_id
),
all_app as (
    SELECT COUNT(distinct id) AS CNT
    FROM applications
),
different AS (
    SELECT COUNT(*) as CNT
    FROM candidates
             JOIN vacantions on candidates.can_a_id = vacantions.vac_a_id
    WHERE candidates.region != vacantions.region
)
SELECT CAST(different.CNT AS FLOAT) / CAST(all_app.CNT AS FLOAT)
FROM all_app
JOIN different ON true;


WITH double_one_vacancy AS (
    SELECT a1.candidate_id, a1.job_id, DATE_PART('day', a1.created_at - a2.created_at) as diff
    FROM applications a1
    JOIN applications a2 on a1.candidate_id = a2.candidate_id and a1.job_id = a2.job_id
    GROUP BY a1.candidate_id, a1.job_id, a1.created_at - a2.created_at
    --HAVING count(a1.job_id) > 1
    HAVING DATE_PART('day', a1.created_at - a2.created_at) > 92
)
SELECT COUNT(distinct candidate_id)
FROM double_one_vacancy;
