/*
문제: 성분으로 구분한 아이스크림 총 주문량
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/133026
*/

-- inner join 사용
SELECT  i.INGREDIENT_TYPE,
        SUM(f.TOTAL_ORDER) TOTAL_ORDER
FROM FIRST_HALF f INNER JOIN ICECREAM_INFO i
ON f.FLAVOR = i.FLAVOR
GROUP BY 1
ORDER BY 2 

-- left join, using 사용
SELECT  i.INGREDIENT_TYPE,
        SUM(f.TOTAL_ORDER) TOTAL_ORDER
FROM FIRST_HALF f LEFT JOIN ICECREAM_INFO i -- 그냥 join, using 해도 괜춘
USING(FLAVOR)
GROUP BY 1
ORDER BY 2 
