/*
문제: 최솟값 구하기
분류: SUM, MAX, MIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59038
*/

SELECT DATETIME "시간"
FROM ANIMAL_INS
ORDER BY DATETIME
LIMIT 1

## 다른 방법
SELECT MIN(DATETIME) "시간"
FROM ANIMAL_INS
