/*
문제: 중성화 여부 파악하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59409
*/

-- IF문
SELECT  ANIMAL_ID,
        NAME,
        IF(SEX_UPON_INTAKE LIKE 'Neutered%' OR SEX_UPON_INTAKE LIKE 'Spayed%', 'O', 'X') AS "중성화"
FROM ANIMAL_INS

-- 다른 방법: CASE WHEN 사용
SELECT  ANIMAL_ID,
        NAME,
        CASE WHEN SEX_UPON_INTAKE LIKE 'Neutered%' THEN 'O'
             WHEN SEX_UPON_INTAKE LIKE 'Spayed%' THEN 'O'
             ELSE 'X' END AS "중성화"
FROM ANIMAL_INS

-- 다른 방법(정규식 사용)
-- 참고 링크: https://school.programmers.co.kr/questions/83499
SELECT  ANIMAL_ID,
        NAME,
        IF(SEX_UPON_INTAKE REGEXP '^neutered|^spayed', 'O', 'X') '중성화'
FROM ANIMAL_INS
