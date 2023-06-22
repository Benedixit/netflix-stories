--SELECT DISTINCT * INTO temp_table FROM dbo.netflix$;

SELECT rating, COUNT(*) FROM temp_table
GROUP BY rating;

SELECT [release year], COUNT(*) FROM temp_table
GROUP BY [release year];

SELECT DISTINCT title, [user rating score], [release year] FROM temp_table
WHERE [user rating score] = 99 OR [user rating score] = 98
ORDER BY [user rating score] DESC;

SELECT rating, COUNT(*), [release year] FROM temp_table
GROUP BY rating, [release year];

SELECT rating, AVG([user rating score]) FROM temp_table
GROUP BY rating;

SELECT COUNT(*) AS total_number FROM temp_table; 

SELECT [release year], AVG([user rating score])  FROM temp_table
WHERE [release year] = 2015 OR [release year] = 2016
GROUP BY [release year];


SELECT [release year], COUNT(*) FROM temp_table
WHERE [release year] = 2015 OR [release year] = 2016
GROUP BY [release year];
