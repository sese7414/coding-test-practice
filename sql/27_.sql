/*
문제: 입양 시각 구하기(1)
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
*/

SELECT  HOUR(DATETIME) HOUR,
        COUNT(*) COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 19 -- 전체는 7시부터 데이터였음
GROUP BY 1
ORDER BY 1
