# Overview
To help Pewlett-Hackard anticipate challenges with a retiring workforce, I was asked to analyze the human resource data. The goal of this analysis had 2 major focuses. The first quesitons that needed to be answered was to determine the titles of those employees who were retiring. The second piece of the analysis was to identify those current employees who were eligible to participate in a mentorship program. This task was completed by using migrating data from CSV files into a postgres database and then writing SQL queries to analyze the datea.

# Results
## Retirment by Titles
Understanding the titles of the retiring employees is critical to understanding the upcoming workforce changes. This analysis highlighted the need to build a plan transfer knowledge from more tenured employees to the junior employees. The focus should be on senior engineers and senior staff.
- Senior Enginneers make up 35% of the retiring workforce with 25,916 upcoming retirments
- Senior Staff make up 34% of the retiring workforce with 24,926

![Retiring Titles](../main/Resources/retiring_titles.png)

## Mentorship Eligibility
To aid in the knowledge tranfer from the retiring employees, I was asked to help identify those employees who are eligible for the mentorship program. To do this, we looked at those individuals who were born in 1965 
- 1549 employees are eligible
- There is still a significant gap between retirees and the mentorship program
- 
# Summary
The upcoming wave of retiring employees is significant. There are 72,458 employees that will be retiring in the future. This probably won't happen all at once but it will be a signficnat wave over the upcoming years. The leadership has proposed a mentorship program to help the company address these changes. This is a great idea, however, the eligibilty of the program limits mentorship to only 1,549 which is a small fraction of those people retiring. Below is a table that shows the mentorship elibility by title.

![Mentorship by Title](../main/Resources/mentorship.png)

Expanding the mentorship eligibilty may help with the knowledge transfer. I've updated the query to expand mentorship eligility to those born between 1965 and 1970 (as shown below). 

![Expanded eligibility](../main/Resources/expanded_mentorship.png)

Unfortunately, this did not expand the number of eligible employees since youngest employees at Pewlett-Hackard were born in 1965. I was able to get to this data by running the query below.

![Expanded eligibility](../main/Resources/dates.png)
