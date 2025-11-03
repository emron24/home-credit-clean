-- Average number of bureau loans per applicant
SELECT
  a.SK_ID_CURR
  , COUNT(b.SK_ID_BUREAU) AS bureau_loans_count
FROM
  application_data a
  LEFT JOIN bureau b
ON a.SK_ID_CURR = b.SK_ID_CURR
GROUP BY
  a.SK_ID_CURR
LIMIT
  20;


SELECT
  bureau_loans_count
  , COUNT(*) AS applicants
  , SUM(
    CASE
      WHEN TARGET = 1 THEN 1
      ELSE 0
    END
  ) AS defaults
  , ROUND(
    100.0 * SUM(
      CASE
        WHEN TARGET = 1 THEN 1
        ELSE 0
      END
    ) / COUNT(*)
    , 2
  ) AS default_rate_pct
FROM
  (
    SELECT
      a.SK_ID_CURR
      , a.TARGET
      , COUNT(b.SK_ID_BUREAU) AS bureau_loans_count
    FROM
      application_data a
      LEFT JOIN bureau b
    ON a.SK_ID_CURR = b.SK_ID_CURR
    GROUP BY
      a.SK_ID_CURR
      , a.TARGET
  ) sub
GROUP BY
  bureau_loans_count
ORDER BY
  bureau_loans_count;


-- Average number of previous applications per applicant
SELECT
  a.SK_ID_CURR
  , COUNT(p.SK_ID_PREV) AS prev_applications
FROM
  application_data a
  LEFT JOIN previous_application p
ON a.SK_ID_CURR = p.SK_ID_CURR
GROUP BY
  a.SK_ID_CURR
LIMIT
  20;


SELECT
  prev_applications
  , COUNT(*) AS applicants
  , SUM(
    CASE
      WHEN TARGET = 1 THEN 1
      ELSE 0
    END
  ) AS defaults
  , ROUND(
    100.0 * SUM(
      CASE
        WHEN TARGET = 1 THEN 1
        ELSE 0
      END
    ) / COUNT(*)
    , 2
  ) AS default_rate_pct
FROM
  (
    SELECT
      a.SK_ID_CURR
      , a.TARGET
      , COUNT(p.SK_ID_PREV) AS prev_applications
    FROM
      application_data a
      LEFT JOIN previous_application p
    ON a.SK_ID_CURR = p.SK_ID_CURR
    GROUP BY
      a.SK_ID_CURR
      , a.TARGET
  ) sub
GROUP BY
  prev_applications
ORDER BY
  prev_applications;