SELECT MAX(num) num
from (SELECT num
FROM MyNumbers
GROUP BY num
HAVING COUNT(num) = 1) as new;