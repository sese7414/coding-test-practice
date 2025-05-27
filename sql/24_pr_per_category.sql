/*
문제: 카테고리 별 상품 개수 구하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131529
*/

SELECT  SUBSTR(PRODUCT_CODE, 1, 2) CATEGORY,
        COUNT(*) PRODUCTS
FROM PRODUCT
GROUP BY 1
ORDER BY 1
