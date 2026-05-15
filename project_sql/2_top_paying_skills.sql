WITH top_paying_skills AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        job_posted_date,
        company_dim.name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title = 'Data Analyst' AND 
        job_location ='United States' AND 
        salary_year_avg IS NOT NULL
    ORDER BY salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_skills.*,
    skills
FROM top_paying_skills
INNER JOIN skills_job_dim ON top_paying_skills.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
salary_year_avg DESC

/*
Most Frequently Requested Skills
Skill	Number of Jobs
SQL	7
Python	7
Excel	5
Power BI	3
Tableau	3
R	3
SQL Server	3
Ruby	2
Word	2
SharePoint	2
SSRS	2
Key Takeaway

SQL and Python are the most common technical skills in the highest-paying postings. These are foundational for data extraction, automation, and analysis.
*/

/*[
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "sql"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "python"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "scala"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "java"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "ruby"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "mysql"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "postgresql"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "sql server"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "aws"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "ruby"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "tableau"
  },
  {
    "job_id": 321008,
    "job_title": "Data Analyst",
    "salary_year_avg": "111175.0",
    "job_posted_date": "2023-02-17 17:05:59",
    "company_name": "Bixal",
    "skills": "power bi"
  },
  {
    "job_id": 572735,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-10-10 23:18:50",
    "company_name": "Insight Global",
    "skills": "python"
  },
  {
    "job_id": 572735,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-10-10 23:18:50",
    "company_name": "Insight Global",
    "skills": "excel"
  },
  {
    "job_id": 572735,
    "job_title": "Data Analyst",
    "salary_year_avg": "110000.0",
    "job_posted_date": "2023-10-10 23:18:50",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "sql"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "sql server"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "oracle"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "excel"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "power bi"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "word"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "sharepoint"
  },
  {
    "job_id": 81442,
    "job_title": "Data Analyst",
    "salary_year_avg": "105000.0",
    "job_posted_date": "2023-04-20 19:02:21",
    "company_name": "Eliassen Group",
    "skills": "ssrs"
  },
  {
    "job_id": 786474,
    "job_title": "Data Analyst",
    "salary_year_avg": "100500.0",
    "job_posted_date": "2023-06-21 02:00:05",
    "company_name": "Govini",
    "skills": "python"
  },
  {
    "job_id": 786474,
    "job_title": "Data Analyst",
    "salary_year_avg": "100500.0",
    "job_posted_date": "2023-06-21 02:00:05",
    "company_name": "Govini",
    "skills": "r"
  },
  {
    "job_id": 764317,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "job_posted_date": "2023-11-29 14:43:26",
    "company_name": "KTek Resourcing",
    "skills": "sql"
  },
  {
    "job_id": 764317,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "job_posted_date": "2023-11-29 14:43:26",
    "company_name": "KTek Resourcing",
    "skills": "python"
  },
  {
    "job_id": 764317,
    "job_title": "Data Analyst",
    "salary_year_avg": "100000.0",
    "job_posted_date": "2023-11-29 14:43:26",
    "company_name": "KTek Resourcing",
    "skills": "excel"
  },
  {
    "job_id": 1768031,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-28 18:56:21",
    "company_name": "SpringbokIT",
    "skills": "sql"
  },
  {
    "job_id": 1768031,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-28 18:56:21",
    "company_name": "SpringbokIT",
    "skills": "sql server"
  },
  {
    "job_id": 1768031,
    "job_title": "Data Analyst",
    "salary_year_avg": "90000.0",
    "job_posted_date": "2023-04-28 18:56:21",
    "company_name": "SpringbokIT",
    "skills": "ssrs"
  },
  {
    "job_id": 72936,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "job_posted_date": "2023-07-17 21:42:52",
    "company_name": "Angi",
    "skills": "sql"
  },
  {
    "job_id": 72936,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "job_posted_date": "2023-07-17 21:42:52",
    "company_name": "Angi",
    "skills": "python"
  },
  {
    "job_id": 72936,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "job_posted_date": "2023-07-17 21:42:52",
    "company_name": "Angi",
    "skills": "r"
  },
  {
    "job_id": 72936,
    "job_title": "Data Analyst",
    "salary_year_avg": "87500.0",
    "job_posted_date": "2023-07-17 21:42:52",
    "company_name": "Angi",
    "skills": "excel"
  },
  {
    "job_id": 928979,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-06-26 14:04:16",
    "company_name": "Insight Global",
    "skills": "sql"
  },
  {
    "job_id": 928979,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-06-26 14:04:16",
    "company_name": "Insight Global",
    "skills": "python"
  },
  {
    "job_id": 928979,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-06-26 14:04:16",
    "company_name": "Insight Global",
    "skills": "react"
  },
  {
    "job_id": 928979,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-06-26 14:04:16",
    "company_name": "Insight Global",
    "skills": "tableau"
  },
  {
    "job_id": 928979,
    "job_title": "Data Analyst",
    "salary_year_avg": "85000.0",
    "job_posted_date": "2023-06-26 14:04:16",
    "company_name": "Insight Global",
    "skills": "power bi"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "sql"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "python"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "r"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "excel"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "word"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "sharepoint"
  },
  {
    "job_id": 659843,
    "job_title": "Data Analyst",
    "salary_year_avg": "75000.0",
    "job_posted_date": "2023-12-23 18:04:08",
    "company_name": "New York Psychotherapy and Counseling Center",
    "skills": "outlook"
  }
]*/