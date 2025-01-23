-- 코드를 입력하세요
SELECT count(*) as users from user_info
where age between 20 and 29 and 
joined between to_date('2021-01-01', 'yyyy-mm-dd') and to_date('2021-12-31', 'yyyy-mm-dd');