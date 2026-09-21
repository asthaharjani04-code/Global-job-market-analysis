SELECT COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)";
SELECT country, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY country
ORDER BY Total_Jobs DESC;
SELECT company, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY company
ORDER BY Total_Jobs DESC
LIMIT 5;
SELECT AVG(salary_min_usd) AS Average_Salary
FROM "fact_job_postings (1)";
SELECT MAX(salary_max_usd) AS Maximum_Salary
FROM "fact_job_postings (1)";
SELECT *
FROM "fact_job_postings (1)"
WHERE experience_level = 'Entry';
SELECT COUNT(*) AS Entry_level
FROM "fact_job_postings (1)"
WHERE experience_level = 'Entry';
SELECT COUNT(*) AS Full_Time
FROM "fact_job_postings (1)"
WHERE employment_type = 'Full-time';
SELECT COUNT(*) AS Full_Time_Remote_Jobs
FROM "fact_job_postings (1)"
WHERE employment_type = 'Full-time'
AND remote_option = 'Remote';
SELECT employment_type, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY employment_type
ORDER BY Total_Jobs DESC;
SELECT platform, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY platform
ORDER BY Total_Jobs DESC;
SELECT job_title, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY job_title
ORDER BY Total_Jobs DESC;
SELECT company, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY company
ORDER BY Total_Jobs DESC;
SELECT company, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY company
ORDER BY Total_Jobs ASC;
SELECT experience_level, AVG(salary_min_usd) AS Average_Salary
FROM "fact_job_postings (1)"
GROUP BY experience_level
ORDER BY Average_Salary DESC;
SELECT experience_level, AVG(salary_min_usd) AS Average_Salary
FROM "fact_job_postings (1)"
GROUP BY experience_level
ORDER BY Average_Salary DESC;
SELECT experience_level, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY experience_level
ORDER BY Total_Jobs DESC
LIMIT 1;
SELECT country, AVG(salary_min_usd) AS Average_Minimum_Salary
FROM "fact_job_postings (1)"
GROUP BY country
ORDER BY Average_Minimum_Salary DESC
LIMIT 1;
SELECT
    COUNT(*) * 100.0 / (SELECT COUNT(*) FROM "fact_job_postings (1)") AS Remote_Percentage
FROM "fact_job_postings (1)"
WHERE remote_option = 'Remote';
SELECT employment_type, AVG(salary_min_usd) AS Average_Minimum_Salary
FROM "fact_job_postings (1)"
GROUP BY employment_type
ORDER BY Average_Minimum_Salary DESC
LIMIT 1;
SELECT company, COUNT(*) AS Total_Jobs
FROM "fact_job_postings (1)"
GROUP BY company
HAVING Total_Jobs > 100;