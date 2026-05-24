# IBM HR Analytics Dashboard

## Description

An end-to-end HR analytics project built using IBM Employee Attrition data to explore and answer key questions about employee turnover. The project combines **SQL-based data analysis** with an interactive **Power BI dashboard** to uncover attrition patterns across departments, salary ranges, tenure, gender, and education. Key insights and recommendations are documented in the results file.

---

## Screenshots

<img width="969" height="544" alt="Executive Overview" src="https://github.com/user-attachments/assets/cf0a98f1-901a-4c5b-bc92-eedba992644c" />
<img width="969" height="545" alt="Employee Deep Dive" src="https://github.com/user-attachments/assets/a3cfb3c6-c303-4fd1-bb02-c951be5cc27b" />
<img width="969" height="545" alt="Salary and Risk Analysis" src="https://github.com/user-attachments/assets/c48febfb-8758-472f-86d1-bd87a79f8b96" />

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| SQL (SQLite) | Data querying and attrition analysis |
| Microsoft Power BI | Interactive dashboard and visualizations |
| DAX | Calculated columns, measures, and KPIs |

---

## Project Files

| File | Description |
|------|-------------|
| `dataset.csv` | IBM HR Employee Attrition dataset (1,470 records) |
| `analysis.sql` | SQL queries analyzing attrition by department, salary, tenure, gender, and education |
| `results.txt` | Key findings and HR retention recommendations |

---

## SQL Analysis

The `analysis.sql` file contains 8 queries that answer core business questions about employee attrition:

- **Overall attrition rate** — across all 1,470 employees
- **Average age of leavers** — demographic profile of who is leaving
- **Attrition by department** — R&D, Sales, and HR breakdown
- **Attrition by salary range** — below $5K, $5K–$10K, $10K–$15K, $15K+
- **Attrition by tenure** — year-by-year risk from 0 to 10+ years
- **Attrition by gender** — male vs. female attrition rate comparison
- **Attrition by education field** — Life Sciences, Medical, Marketing, and more
- **Leavers vs. stayers comparison** — avg age, income, tenure, satisfaction, and work-life balance

To run the queries, import `dataset.csv` into any SQL environment (SQLite, MySQL, or PostgreSQL) as a table named `dataset` and execute `analysis.sql`.

---

## Key Findings

- The overall attrition rate is **~16%**, above the typical HR industry benchmark
- **69%** of employees who left earned below **$5,000/month** — compensation is a primary driver
- The **Research & Development** department had the highest attrition at **56%** of total leavers
- Employees in their **first year** had a **25% attrition rate** — nearly 2.5× the company average
- **Male** employees left at **17%** vs. **14.8%** for female employees
- Employees with a **Life Sciences** background accounted for the highest attrition by education field (89 individuals)

---

## Power BI Dashboard

The dashboard consists of three pages with cross-page slicers for department, gender, age band, and education:

- **Executive Overview** — KPI cards, overall attrition split, attrition by department and job role
- **Employee Deep Dive** — attrition by age, tenure, job satisfaction, and work-life balance
- **Salary & Risk Analysis** — income vs. attrition, overtime impact, high-risk segment heat map

DAX measures include attrition rate, average monthly income by cohort, and leavers vs. stayers comparisons.

---

## Recommendations

Based on the SQL and Power BI analysis, the following retention strategies are recommended:

1. Review and improve compensation for employees earning below $5,000/month
2. Implement targeted retention programs for R&D and Sales departments
3. Introduce structured onboarding and early-career support for first-year employees
4. Conduct stay interviews with employees around the 40-year age mark
5. Address work-life balance issues linked to overtime and long commutes
6. Build career development pathways for Life Sciences and Medical graduates
7. Monitor and close gender-based attrition gaps through inclusion initiatives
8. Regularly benchmark salaries against industry standards to stay competitive

---

## Installation

To explore the Power BI dashboard, install [Microsoft Power BI Desktop](https://powerbi.microsoft.com/en-us/downloads/) and open the `.pbix` file.

To run the SQL analysis, import `dataset.csv` into SQLite (or any SQL client) and run `analysis.sql`.

---

## Dataset Credit

IBM HR Analytics Attrition Dataset — sourced from [Kaggle](https://www.kaggle.com/datasets/pavansubhasht/ibm-hr-analytics-attrition-dataset).
