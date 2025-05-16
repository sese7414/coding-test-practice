/*
문제: 중복 제거하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59408
*/

SELECT COUNT(DISTINCT NAME) count_animal 
FROM ANIMAL_INS
WHERE NAME is not null
