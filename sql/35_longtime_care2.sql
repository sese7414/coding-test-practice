/*
문제: 오랜 기간 보호한 동물(2)
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59411
*/

-- 날짜까리 빼서 바로 비교
SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_INS i 
INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID
ORDER BY o.DATETIME - i.DATETIME DESC
LIMIT 2
  
-- 날짜 함수 사용 - DATEDIFF, TIMESTAMPDIFF
SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_INS i 
INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID
-- ORDER BY DATEDIFF(o.DATETIME, i.DATETIME) DESC
ORDER BY TIMESTAMPDIFF(DAY, i.DATETIME, o.DATETIME) DESC
LIMIT 2
  
-- join에서 using 이용
SELECT o.ANIMAL_ID, o.NAME
FROM ANIMAL_INS i JOIN ANIMAL_OUTS o 
USING(ANIMAL_ID)
ORDER BY TIMESTAMPDIFF(DAY, i.DATETIME, o.DATETIME) DESC
LIMIT 2
-- 출처: https://school.programmers.co.kr/questions/84309

-- window - row_number 사용
WITH protection_period_desc AS (
    SELECT  o.ANIMAL_ID, o.NAME,
            ROW_NUMBER() OVER(ORDER BY (o.DATETIME - i.DATETIME) DESC ) pp
    FROM ANIMAL_INS i 
    INNER JOIN ANIMAL_OUTS o ON i.ANIMAL_ID = o.ANIMAL_ID

)
SELECT ANIMAL_ID, NAME
FROM protection_period_desc
WHERE pp <= 2
ORDER BY pp
-- 참고: https://school.programmers.co.kr/questions/85280
