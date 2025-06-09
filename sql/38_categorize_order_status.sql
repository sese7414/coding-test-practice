/*
문제: 조건별로 분류하여 주문상태 출력하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131113
*/

SELECT  ORDER_ID, PRODUCT_ID, 
        DATE_FORMAT(OUT_DATE, '%Y-%m-%d') OUT_DATE,
        CASE WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
             WHEN OUT_DATE IS NULL THEN '출고미정'
             ELSE '출고대기' END AS '출고여부' -- OUT_DATA > '2022-05-01' THEN '출고대기' 해도 괜찮음
FROM FOOD_ORDER
ORDER BY ORDER_ID
