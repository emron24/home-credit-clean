-- Count total records
SELECT COUNT(*) AS total_records
FROM application_data;

-- Check class balance (defaults vs non-defaults)
SELECT TARGET, COUNT(*) AS count_records
FROM application_data
GROUP BY TARGET;

-- Summary of income distribution
SELECT 
    MIN(AMT_INCOME_TOTAL) AS min_income,
    MAX(AMT_INCOME_TOTAL) AS max_income,
    AVG(AMT_INCOME_TOTAL) AS avg_income
FROM application_data;

-- Default rate by gender
SELECT CODE_GENDER, 
       COUNT(*) AS total_customers,
       SUM(CASE WHEN TARGET = 1 THEN 1 ELSE 0 END) AS defaults,
       ROUND(100.0 * SUM(CASE WHEN TARGET = 1 THEN 1 ELSE 0 END) / COUNT(*), 2) AS default_rate_pct
FROM application_data
GROUP BY CODE_GENDER;
