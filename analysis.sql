-- ============================================================
-- Workplace HR Analytics — SQL Analysis
-- Dataset: IBM HR Employee Attrition (1,470 records)
-- Tool: SQLite (compatible with MySQL / PostgreSQL)
-- ============================================================


-- ── Q1: Overall attrition rate ───────────────────────────────
SELECT
    COUNT(*)                                      AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 END)  AS employees_left,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1.0 END)
        / COUNT(*) * 100, 1
    )                                             AS attrition_rate_pct
FROM dataset;


-- ── Q2: Average age of employees who left ────────────────────
SELECT
    ROUND(AVG(Age), 1) AS avg_age_of_leavers
FROM dataset
WHERE Attrition = 'Yes';


-- ── Q3: Attrition count and rate by department ───────────────
SELECT
    Department,
    COUNT(*)                                                  AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)       AS left_company,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100, 1
    )                                                         AS attrition_rate_pct
FROM dataset
GROUP BY Department
ORDER BY attrition_rate_pct DESC;


-- ── Q4: Attrition by monthly income range ────────────────────
SELECT
    CASE
        WHEN MonthlyIncome < 5000  THEN 'Below $5,000'
        WHEN MonthlyIncome < 10000 THEN '$5,000 – $10,000'
        WHEN MonthlyIncome < 15000 THEN '$10,000 – $15,000'
        ELSE '$15,000+'
    END                                                       AS salary_range,
    COUNT(*)                                                  AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)       AS left_company,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100, 1
    )                                                         AS attrition_rate_pct
FROM dataset
GROUP BY salary_range
ORDER BY MIN(MonthlyIncome);


-- ── Q5: Attrition by years at company (tenure) ───────────────
SELECT
    YearsAtCompany,
    COUNT(*)                                                  AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)       AS left_company,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100, 1
    )                                                         AS attrition_rate_pct
FROM dataset
GROUP BY YearsAtCompany
ORDER BY YearsAtCompany;


-- ── Q6: Attrition rate by gender ─────────────────────────────
SELECT
    Gender,
    COUNT(*)                                                  AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)       AS left_company,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100, 1
    )                                                         AS attrition_rate_pct
FROM dataset
GROUP BY Gender;


-- ── Q7: Attrition by education field ─────────────────────────
SELECT
    EducationField,
    COUNT(*)                                                  AS total,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END)       AS left_company,
    ROUND(
        SUM(CASE WHEN Attrition = 'Yes' THEN 1.0 ELSE 0 END)
        / COUNT(*) * 100, 1
    )                                                         AS attrition_rate_pct
FROM dataset
GROUP BY EducationField
ORDER BY left_company DESC;


-- ── Q8: Leavers vs stayers — key metric comparison ───────────
SELECT
    Attrition                         AS status,
    ROUND(AVG(Age), 1)                AS avg_age,
    ROUND(AVG(MonthlyIncome), 0)      AS avg_monthly_income,
    ROUND(AVG(YearsAtCompany), 1)     AS avg_tenure_years,
    ROUND(AVG(JobSatisfaction), 2)    AS avg_job_satisfaction,
    ROUND(AVG(WorkLifeBalance), 2)    AS avg_work_life_balance
FROM dataset
GROUP BY Attrition;
