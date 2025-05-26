/*
문제: 조건에 맞는 회원수 구하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
*/

SELECT COUNT(*) USERS
FROM USER_INFO
WHERE YEAR(JOINED) = 2021 AND (AGE BETWEEN 20 AND 29)
