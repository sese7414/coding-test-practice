/*
문제: 조건에 맞는 회원수 구하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131535
*/

SELECT COUNT(*) USERS
FROM USER_INFO
WHERE YEAR(JOINED) = 2021 AND (AGE BETWEEN 20 AND 29) -- DATE 형식 이용해서 쿼리 짬

-- 다른 방법: like 사용
SELECT COUNT(*) USERS
FROM USER_INFO
WHERE JOINED LIKE '2021%' AND (AGE BETWEEN 20 AND 29)
