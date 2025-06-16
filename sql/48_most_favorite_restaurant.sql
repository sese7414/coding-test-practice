/*
문제: 즐겨찾기가 가장 많은 식당
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131123
*/

-- CTE 활용
WITH fodd_type_nfavirites AS (
    SELECT  
        FOOD_TYPE,
        REST_ID, 
        REST_NAME,
        FAVORITES,
        RANK() OVER (PARTITION BY FOOD_TYPE ORDER BY FAVORITES DESC) AS RANK_FAVORITES
    FROM REST_INFO
)
SELECT  
    FOOD_TYPE, 
    REST_ID, 
    REST_NAME,
    FAVORITES
FROM fodd_type_nfavirites
WHERE RANK_FAVORITES = 1
ORDER BY FOOD_TYPE DESC;
