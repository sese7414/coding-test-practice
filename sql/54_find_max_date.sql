/*
문제: 최댓값 구하기
분류: SUM, MAX, MIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59415
*/

-- 정렬 + limit
SELECT DATETIME
FROM ANIMAL_INS
ORDER BY DATETIME DESC
LIMIT 1

-- max 사용
SELECT MAX(DATETIME) AS '시간'
FROM ANIMAL_INS
