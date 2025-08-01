/*
문제: 저자 별 카테고리 별 매출액 집계하기
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/144856
*/

-- INNER JOIN 3
SELECT  B.AUTHOR_ID,
        AUTHOR_NAME,
        CATEGORY,
        SUM(SALES * PRICE) TOTAL_SALES
FROM BOOK_SALES BS INNER JOIN BOOK B
ON BS.BOOK_ID = B.BOOK_ID INNER JOIN AUTHOR A
ON B.AUTHOR_ID = A.AUTHOR_ID
WHERE SALES_DATE LIKE '2022-01-%'
  -- SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
GROUP BY 1, 2, 3
ORDER BY AUTHOR_ID, CATEGORY DESC

-- WITH문 사용
WITH BOOK_TOTAL AS (
    SELECT  B.AUTHOR_ID,
            CATEGORY,
            SUM(SALES * PRICE) TOTAL_SALES
    FROM BOOK_SALES BS INNER JOIN BOOK B
    ON BS.BOOK_ID = B.BOOK_ID
    WHERE SALES_DATE LIKE '2022-01-%'
    GROUP BY 1, 2

)
SELECT  BT.AUTHOR_ID,
        AUTHOR_NAME,
        CATEGORY,
        TOTAL_SALES
FROM BOOK_TOTAL BT LEFT JOIN AUTHOR A
ON BT.AUTHOR_ID = A.AUTHOR_ID
ORDER BY AUTHOR_ID, CATEGORY DESC
