/*
문제: 재구매가 일어난 상품과 회원 리스트 구하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131536
*/

-- CTE 활용
WITH REBUY AS (
    SELECT  USER_ID, PRODUCT_ID, 
            COUNT(*) AS BUY_CNT
    FROM ONLINE_SALE
    GROUP BY USER_ID, PRODUCT_ID
)
SELECT USER_ID, PRODUCT_ID
FROM REBUY
WHERE BUY_CNT >= 2
ORDER BY USER_ID, PRODUCT_ID DESC

-- 간단 버전
SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1 -- 그냥 이렇게 바로 하면 되는데 열을 하나 더 만들어서 계산하는 걸 생각함 자꾸!
ORDER BY USER_ID ASC, PRODUCT_ID DESC;
