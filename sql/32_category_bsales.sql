/*
문제: 카테고리 별 도서 판매량 집계하기
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/144855
*/

SELECT  CATEGORY, 
        SUM(SALES) TOTAL_SALES
FROM BOOK b INNER JOIN BOOK_SALES bs ON b.BOOK_ID = bs.BOOK_ID 
    -- like
-- WHERE SALES_DATE LIKE '2022-01%'
    -- YEAR, MONTH
-- WHERE YEAR(SALES_DATE) = 2022 AND MONTH(SALES_DATE) = 1
    -- BETWEEN 사용
-- WHERE SALES_DATE BETWEEN '2022-01-01' AND '2022-01-31'
    -- DATE_FORMAT 사용
-- WHERE DATE_FORMAT(S.SALES_DATE, '%Y-%m') = '2022-01'
    -- 부등호 - 모든 시간대를 정확히 포함, 가장 널리 쓰는 표준 패턴
WHERE S.SALES_DATE >= '2022-01-01' AND S.SALES_DATE < '2022-02-01' 
GROUP BY CATEGORY
ORDER BY CATEGORY

-- DATE_FORMAT, 부등호 참고: https://school.programmers.co.kr/questions/87739
