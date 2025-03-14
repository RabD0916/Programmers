-- 코드를 입력하세요
SELECT u.user_id , u.nickname , sum(b.price) as total_sales
from used_goods_board b
join used_goods_user u
on b.writer_id = u.user_id
group by u.user_id , b.writer_id , u.nickname , b.status
having sum(price) >= 700000 and b.status = 'DONE'
order by total_sales