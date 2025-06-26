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
