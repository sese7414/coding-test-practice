/*
문제: 입양 시각 구하기(1)
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59412
*/

-- 날짜 데이터에서 시(HOUR)만 추출 HOUR 함수
SELECT  HOUR(DATETIME) HOUR,
        COUNT(*) COUNT
FROM ANIMAL_OUTS
WHERE HOUR(DATETIME) BETWEEN 9 AND 19 -- 전체는 7시부터 데이터였음
GROUP BY 1
ORDER BY 1

-- DATE_FORMAT 이용하기
SELECT  DATE_FORMAT(DATETIME, '%H') HOUR,
        COUNT(*) COUNT
FROM ANIMAL_OUTS
WHERE DATE_FORMAT(DATETIME, '%H') BETWEEN 9 AND 19
GROUP BY 1
ORDER BY 1

-- 문자열 자르기 SUBSTR
SELECT  SUBSTR(DATETIME, 12, 2) HOUR,
        COUNT(*) COUNT
FROM ANIMAL_OUTS
WHERE SUBSTR(DATETIME, 12, 2) BETWEEN 9 AND 19
GROUP BY 1
ORDER BY 1
