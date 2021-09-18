SELECT *        --select all the columns here 
FROM students
WHERE age BETWEEN 18 AND 20;


SELECT *
FROM students
WHERE student_name like '%ch%'
OR student_name like '%nd';

SELECT student_name          --students name column here 
FROM students
WHERE (student_name like '%ae%' OR student_name like '%ph%')
AND age >= 19;

SELECT student_name
FROM students
ORDER BY student_no DESC;   --sort descending by student number here 

SELECT *
FROM students
ORDER BY age DESC   -- sort by age in desc order here
LIMIT 4;          -- limit to 4 entries here


SELECT *
FROM students
WHERE  (AGE <= 20 AND student_no BETWEEN 3 AND 5 OR student_no = 7 )
OR (AGE > 20 AND student_no >= 4);

-- if the students age is less than orequal to 20 
-- then their student number should be in some range 
-- else their student number should be in another range 
-- if their age exceeds 20 

SELECT * 
FROM professors;


SELECT last_name || ' ' || 'works in the '|| department ||' department'
FROM professors;

-- this is an example of concatenation using pipes here

SELECT *,(salary>95000) as highly_paid
FROM professors;

-- now concatenate the result in here : 

SELECT 'It is ' || (salary > 95000) ||

' that professor ' || last_name || ' is highly paid'

FROM professors;


-- selects all the columns but while selecting the 
-- department column it just considers the first 3 chars in upper case
SELECT last_name,UPPER(SUBSTRING(department, 1, 3)) as department,salary, hire_date
FROM professors;


SELECT MAX(salary) as higest_salary,
MIN(salary) as lowest_salary
FROM professors
WHERE last_name != 'Wilson';

--return the max and the min salaries 
-- exclude the professor named Wilson in the computation 


SELECT MIN(hire_date)
FROM professors;

SELECT MAX(hire_date)
FROM professors;

-- the newest and the oldest exp profs 


