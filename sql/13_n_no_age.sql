/*
문제: 나이 정보가 없는 회원 수 구하기
분류: IS NULL
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131528
*/

SELECT COUNT(*) USERS
FROM USER_INFO
WHERE AGE IS NULL
