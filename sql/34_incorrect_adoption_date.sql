/*
문제: 있었는데요 없었습니다
분류: JOIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59043
*/

SELECT ao.ANIMAL_ID, ao.NAME
FROM ANIMAL_INS ai
INNER JOIN ANIMAL_OUTS ao 
ON ai.ANIMAL_ID = ao.ANIMAL_ID
WHERE ai.DATETIME > ao.DATETIME
ORDER BY ai.DATETIME -- 보호 시작일이 빠른 순 / 내가 보호 시작일이 아니라 입양일을 기준으로 해서 틀렸던 거였다 !!

