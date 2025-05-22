/*
문제: NULL 처리하기
분류: IS NULL
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59410
*/

-- 방법1
SELECT ANIMAL_TYPE, 
       if(NAME is null, 'No name', NAME) NAME, 
       SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
-- 방법2
SELECT ANIMAL_TYPE, 
       ifnull(NAME, 'No name') NAME, 
       SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID

-- 방법3
SELECT ANIMAL_TYPE, 
       COALESCE(NAME, 'No name') NAME, 
       SEX_UPON_INTAKE
FROM ANIMAL_INS
ORDER BY ANIMAL_ID
