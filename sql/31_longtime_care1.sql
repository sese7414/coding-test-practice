/*
문제: 오랜 기간 보호한 동물(1)
분류: JOIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59044
*/

-- left join
SELECT AI.NAME, AI.DATETIME
FROM ANIMAL_INS AI LEFT JOIN ANIMAL_OUTS AO ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AO.ANIMAL_ID IS NULL
ORDER BY 2
LIMIT 3

-- where, not exists
SELECT AI.NAME, AI.DATETIME
FROM ANIMAL_INS AI
WHERE NOT EXISTS (
        SELECT 1
        FROM ANIMAL_OUTS AO
        WHERE AI.ANIMAL_ID = AO.ANIMAL_ID
)
ORDER BY 2 -- 보호 시작일 기준 오름차순
LIMIT 3 -- 상위 3개만 선택
-- 참고: https://school.programmers.co.kr/questions/88241
-- SELECT AI.NAME, AI.DATETIME 내가 짠 실패 코드 -- 원인 찾기!
-- FROM ANIMAL_INS AI
-- WHERE AI.ANIMAL_ID NOT EXISTS (
--         SELECT ANIMAL_ID
--         FROM ANIMAL_OUTS)
-- ORDER BY 2
-- LIMIT 3

-- where, not in
SELECT A.NAME, A.DATETIME
FROM ANIMAL_INS A 
WHERE ANIMAL_ID NOT IN (
    SELECT ANIMAL_ID
    FROM ANIMAL_OUTS
)
ORDER BY A.DATETIME
LIMIT 3
-- 참고: https://school.programmers.co.kr/questions/87297
