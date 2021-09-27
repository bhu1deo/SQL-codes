SELECT * FROM fruit_imports

--state with the largest amount of fruit supply here :: 

SELECT state          -- note that we are grouping by the state hence here state column should be present 
FROM fruit_imports 
GROUP BY state
ORDER BY SUM(supply) desc
LIMIT 1           -- select only the first top value that is 

SELECT season, MAX(cost_per_unit) highest_cost_per_unit
FROM fruit_imports
GROUP BY season
-- firstly you are gouping by the season 
-- then you are aggregating the cost per unit column here 


SELECT state,name,COUNT(name)
FROM fruit_imports
GROUP BY state, name
HAVING COUNT(name) > 1
-- more than one import of the same fruit :: COUNT just counts 
-- the occurrences in the name column and then we are selecting those 
-- which have more than 2 occurrences here 

SELECT season, COUNT(name)
FROM fruit_imports
GROUP BY season
HAVING count(name) = 3 OR count(name) = 4
-- note that here we are not grouping by the name column 
-- we are just grouping by the season and then counting the occurrences 
-- in the name column here 

SELECT state, SUM(supply * cost_per_unit) total_cost
FROM fruit_imports
GROUP BY state
ORDER BY total_cost desc
LIMIT 1
-- here we are computing a total cost column : aggregation 
-- then we are sorting in the total cost column and then 
-- we are choosing the top state here 


