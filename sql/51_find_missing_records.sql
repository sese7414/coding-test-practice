/*
문제: 없어진 기록 찾기
분류: JOIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59042
*/

-- left join 후 ID가 없는 열 선택
SELECT AO.ANIMAL_ID, AO.NAME
FROM ANIMAL_OUTS AO LEFT JOIN ANIMAL_INS AI
ON AO.ANIMAL_ID = AI.ANIMAL_ID
WHERE AI.ANIMAL_ID IS NULL;

-- WHERE + 서브쿼리로 INS 데이터에 없는 아이디 출력
SELECT ANIMAL_ID, NAME
FROM ANIMAL_OUTS
WHERE ANIMAL_ID NOT IN (
     SELECT DISTINCT ANIMAL_ID
     FROM ANIMAL_INS
);

-- EXIST 사용
SELECT ANIMAL_ID, NAME
FROM ANIMAL_OUTS A
WHERE NOT EXISTS ( 
        SELECT 1
        FROM ANIMAL_INS B
        WHERE A.ANIMAL_ID = B.ANIMAL_ID
    )
ORDER BY A.ANIMAL_ID;
-- 출처: https://school.programmers.co.kr/questions/88237
