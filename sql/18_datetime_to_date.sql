/*
문제: DATETIME에서 DATE로 형 변환
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59414
*/

SELECT  ANIMAL_ID,
        NAME,
        DATE_FORMAT(DATETIME, '%Y-%m-%d')
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
