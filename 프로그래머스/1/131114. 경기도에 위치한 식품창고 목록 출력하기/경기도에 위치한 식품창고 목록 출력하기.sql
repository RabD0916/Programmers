-- 코드를 입력하세요
SELECT warehouse_id , warehouse_name , address , IFNULL(freezer_yn , 'N')
from food_warehouse
where address Like '경기%'
order by warehouse_id