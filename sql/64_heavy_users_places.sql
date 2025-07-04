/*
문제: 헤비 유저가 소유한 장소
분류: 2021 Dev-Matching: 웹 백엔드 개발자(상반기)
링크: https://school.programmers.co.kr/learn/courses/30/lessons/77487
*/

-- 서브 쿼리 사용
SELECT *
FROM PLACES
WHERE HOST_ID IN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(*) >= 2
)
ORDER BY ID

-- 조인 사용
SELECT ID, NAME, P.HOST_ID
FROM PLACES P INNER JOIN (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(*) >= 2
) H
ON P.HOST_ID = H.HOST_ID
ORDER BY ID

-- 윈도우 함수 사용
SELECT ID, NAME, HOST_ID
FROM (
    SELECT *, COUNT(*) OVER (PARTITION BY HOST_ID) AS HOST_COUNT
    FROM PLACES
) P
WHERE HOST_COUNT >= 2
ORDER BY ID;
-- 참고: https://school.programmers.co.kr/questions/89159

-- CTE
WITH HEAVY_USERS AS (
    SELECT HOST_ID
    FROM PLACES
    GROUP BY HOST_ID
    HAVING COUNT(HOST_ID) >= 2
)
SELECT ID, NAME, P.HOST_ID
FROM PLACES P JOIN HEAVY_USERS H
ON P.HOST_ID = H.HOST_ID
ORDER BY ID
-- 참고: https://school.programmers.co.kr/questions/84676
-- with 절 살리고 밑에만 다르게 사용 가능
SELECT *
FROM PLACES
WHERE HOST_ID IN (SELECT HOST_ID
                  FROM HEAVY_USERS)
ORDER BY ID
