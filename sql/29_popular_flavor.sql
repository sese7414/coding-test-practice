/*
문제: 인기있는 아이스크림
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/133024
*/

SELECT  FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID
