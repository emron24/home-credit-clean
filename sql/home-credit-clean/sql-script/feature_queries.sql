-- Default rate by age group
SELECT 
    FLOOR(ABS(DAYS_BIRTH) / 365 / 10) * 10 AS age_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN TARGET = 1 THEN 1 ELSE 0 END) AS defaults,
    ROUND(100.0 * SUM(CASE WHEN TARGET = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate_pct
FROM application_data
GROUP BY FLOOR(ABS(DAYS_BIRTH) / 365 / 10) * 10
ORDER BY age_group;

-- Default rate by employment length
SELECT 
    FLOOR(ABS(DAYS_EMPLOYED) / 365) AS years_employed,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN TARGET = 1 THEN 1 ELSE 0 END) AS defaults,
    ROUND(100.0 * SUM(CASE WHEN TARGET = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate_pct
FROM application_data
GROUP BY FLOOR(ABS(DAYS_EMPLOYED) / 365)
ORDER BY years_employed;
