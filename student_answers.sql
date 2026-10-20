-- Name / student ID:
Titouan Perron 
-- Q1. Write one SELECT below.
select 
    count(distinct user_id) as active_users
from sessions
where session_start >= '2026-09-01' and session_start < '2026-10-01'    

-- Q2. Write one SELECT below.
select 
    c.category,
    sum(e.watch_seconds) as total_watch_seconds
from events e
join content c on e.content_id = c.content_id
where e.event_time >= '2026-01-01' and e.event_time < '2027-01-01'
group by c.category
having sum(e.watch_seconds) > 100000
order by total_watch_seconds desc

-- Q3. Corrected SELECT below; explanation in submission/answers.md.
select 
    u.country,
    sum(s.monthly_price) as monthly_subscription_value
from subscriptions s
join users u on s.user_id = u.user_id
where s.start_date <= '2026-09-01' and (s.end_date is null or s.end_date > '2026-09-01')
group by u.country
order by u.country desc

-- Q4. Corrected SELECT below; explanation in submission/answers.md.
select 
    date_trunc('month', u.signup_date) as signup_month,
    count(distinct u.user_id) as registered_users,
    count(distinct s.user_id) as september_active_users
from users u
left join sessions s on u.user_id = s.user_id and s.session_start >= '2026-09-01' and s.session_start < '2026-10-01'
group by signup_month
order by signup_month desc
-- Q5A. Corrected SELECT below; explanation in submission/answers.md.
Because the original query may uses an inner join, it excludes users with no sessions. To include all users, we should use a LEFT JOIN and count the session_id instead of using COUNT(*), which counts all rows in the result set, including those with NULL values from the sessions table.
-- Q5B. Corrected SELECT below; explanation in submission/answers.md.

-- Q5C. Proposed DDL, if applicable, below; reasoning in answers.md.

-- BONUS (optional). ALTER the existing subscriptions_bonus table below.
-- Do not reset or replace the table. Run the bonus separately from your SELECTs.
