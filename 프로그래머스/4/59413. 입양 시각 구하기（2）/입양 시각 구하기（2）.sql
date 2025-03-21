-- 코드를 입력하세요
WITH RECURSIVE hour_list AS (
    SELECT 0 AS HOUR
    UNION ALL
    SELECT HOUR + 1 FROM hour_list WHERE HOUR < 23
)
SELECT h.HOUR, COALESCE(COUNT(a.DATETIME), 0) AS COUNT
FROM hour_list h
LEFT JOIN ANIMAL_OUTS a ON h.HOUR = HOUR(a.DATETIME)
GROUP BY h.HOUR
ORDER BY h.HOUR;
