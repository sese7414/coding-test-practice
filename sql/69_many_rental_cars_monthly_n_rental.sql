/*
문제: 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/151139
*/

-- CTE & INNER JOIN
WITH RENTAL_5 AS (
    SELECT  CAR_ID
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
    GROUP BY CAR_ID
    HAVING COUNT(*) >= 5
)
SELECT  MONTH(START_DATE) MONTH,
        CRH.CAR_ID,
        COUNT(*) RECORDS
FROM  CAR_RENTAL_COMPANY_RENTAL_HISTORY CRH INNER JOIN RENTAL_5 R5
ON CRH.CAR_ID = R5.CAR_ID
WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
GROUP BY 1, 2
ORDER BY 1, 2 DESC

  -- CTE & WHERE JOIN
WITH RENTAL_5 AS (
    SELECT  CAR_ID 
    FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
    WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31'
    GROUP BY CAR_ID
    HAVING COUNT(*) >= 5
)
SELECT  MONTH(START_DATE) MONTH,
        CAR_ID,
        COUNT(*) RECORDS
FROM  CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE START_DATE BETWEEN '2022-08-01' AND '2022-10-31' AND
      -- MONTH(START_DATE) BETWEEN 8 AND 10
        CAR_ID IN (SELECT * FROM RENTAL_5)
GROUP BY 1, 2
ORDER BY 1, 2 DESC

-- CTE 말고 서브쿼리 가능
-- CTE에서 window 함수 사용 가능
-- COUNT(*) OVER (PARTITION BY CAR_ID) AS RENTAL_COUNT
