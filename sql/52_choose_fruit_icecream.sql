/*
문제: 과일로 만든 아이스크림 고르기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/133025
*/

-- left join 후 ID가 없는 열 선택
SELECT FH.FLAVOR
FROM FIRST_HALF FH INNER JOIN ICECREAM_INFO II 
ON FH.FLAVOR = II.FLAVOR
WHERE FH.TOTAL_ORDER >= 3000 AND II.INGREDIENT_TYPE = 'fruit_based'
ORDER BY TOTAL_ORDER DESC
