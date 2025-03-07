-- 코드를 입력하세요
SELECT member_id , member_name , gender , TO_CHAR(date_of_birth, 'YYYY-MM-DD') AS date_of_birth
from member_profile
where tlno is not null and to_char(date_of_birth,'YYYY-MM-DD') LIKE '%03%' AND GENDER = 'W'
ORDER BY MEMBER_ID ;