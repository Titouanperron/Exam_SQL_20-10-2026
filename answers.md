# Investigation and corrections

Name / student ID: Titouan Perron

## Q3 — Subscription snapshot

Problem identified:

Explanation: Join of the subscibtion table with the users on the key user_id.

Correction and reasoning: correction with taking in consideration the null value in 'end_date'  in the subscription table.

## Q4 — Signup population

Problem identified and explanation:

Correction and reasoning: Left joi because we only want the users informations 


## Q5A — Counting

Problem identified and explanation:

Correction and reasoning:

## Q5B — Previous session

Problem identified and explanation:

Correction and reasoning:

## Q5C — Design recommendation

Change and concrete SQL (or reference to my SQL file):

Reasoning:

Cost or limitation:

## Q6 — Visual critique

| Issue (exactly three) | Consequence for interpretation | Proposed correction |
|---|---|---|
| 1 |Somme of users_id don't represent anything | Rename this information for a more clear conprehension|
| 2 |We have the total but also distinct user_id  |Just choose one  
 |
| 3 | | |

Changes made in the saved workbook:

## Q7 — Metric and grain

Source row grain:

Problem identified and explanation:

Corrected calculation:

One-sentence interpretation of my corrected value, with unit, population and period:

## Bonus — Optional

Why user_id must permit multiple subscription rows:

## Submission check

- [ ] SQL saved in sql/student_answers.sql.
- [ ] Explanations above completed.
- [ ] submission/corrected_workbook.twbx saved and reopened.
