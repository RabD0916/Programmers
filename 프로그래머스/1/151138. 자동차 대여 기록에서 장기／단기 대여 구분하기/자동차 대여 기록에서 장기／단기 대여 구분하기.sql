-- 코드를 입력하세요
SELECT 
    history_id,
    car_id,
    TO_CHAR(start_date, 'YYYY-MM-DD') START_DATE,
    TO_CHAR(end_date, 'YYYY-MM-DD') END_DATE,
    CASE 
        WHEN (END_date - START_DATE+1) >= 30 THEN '장기 대여'
        ELSE '단기 대여'
    END AS RENT_TYPE
FROM car_rental_company_rental_history
WHERE to_char(start_date, 'YYYY-MM-DD') LIKE '2022-09%'
ORDER BY history_id DESC;
