/*
문제: 가격이 제일 비싼 식품의 정보 출력하기 - 틀림
분류: SUM, MAX, MIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131115
*/

SELECT  PRODUCT_ID,
        PRODUCT_NAME,
        PRODUCT_CD,
        CATEGORY,
        PRICE
FROM FOOD_PRODUCT
WHERE PRICE = (SELECT MAX(PRICE) FROM FOOD_PRODUCT) 
/*
select에서 바로 max()를 쓰는 것은 max()가 집계함수이기 때문에 group by를 해줘야 한다.
그래서 where문으로 서브쿼리를 이용해서 조건을 걸어줘야 함!
*/

## 다른 방법
SELECT  PRODUCT_ID,
        PRODUCT_NAME,
        PRODUCT_CD,
        CATEGORY,
        PRICE
FROM FOOD_PRODUCT
ORDER BY PRICE DESC
LIMIT 1
