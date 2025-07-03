/*
문제: 서울에 위치한 식당 목록 출력하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131118
*/

-- 처음에는 left join을 하려고 했지만 리뷰 null값이 있어서 안 됨.
-- 서울특별시만 있는 줄 알았는데 서울시도 있어서 서울%로 했어야 했다...
-- JOIN 후 SELECT에서 열 만들기
SELECT  i.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS,
        ROUND(AVG(rm.REVIEW_SCORE), 2) SCORE
FROM REST_INFO i INNER JOIN REST_REVIEW rm
ON i.REST_ID = rm.REST_ID
WHERE ADDRESS LIKE '서울%'
GROUP BY REST_ID
ORDER BY SCORE DESC, FAVORITES DESC

-- JOIN할 때 평균 평점 열 만든 테이블과 하기 
SELECT  i.REST_ID, REST_NAME, FOOD_TYPE, FAVORITES, ADDRESS,
        SCORE
FROM REST_INFO i 
INNER JOIN (
    SELECT REST_ID, ROUND(AVG(REVIEW_SCORE), 2) SCORE
    FROM REST_REVIEW
    GROUP BY REST_ID) rm
ON i.REST_ID = rm.REST_ID
WHERE ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, FAVORITES DESC
