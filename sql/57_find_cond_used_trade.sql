/*
문제: 조건에 부합하는 중고거래 상태 조회하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/164672
*/

-- CASE WHEN 조건문
SELECT  BOARD_ID, WRITER_ID, TITLE, PRICE, 
        CASE WHEN `STATUS` = 'SALE' THEN '판매중'
             WHEN `STATUS` = 'RESERVED' THEN '예약중'
             WHEN `STATUS` = 'DONE' THEN '거래완료' END AS 'STATUS'
FROM USED_GOODS_BOARD
WHERE CREATED_DATE = '2022-10-05'
ORDER BY BOARD_ID DESC


-- CASE WHEN 다른 버전, REGEXP, DATE_FORMAT 버전
SELECT  BOARD_ID, WRITER_ID, TITLE, PRICE, 
        CASE `STATUS` WHEN 'SALE' THEN '판매중'
             WHEN 'RESERVED' THEN '예약중'
             WHEN 'DONE' THEN '거래완료' END AS 'STATUS'
FROM USED_GOODS_BOARD
WHERE CREATED_DATE REGEXP '^2022-10-05'
  -- DATE_FORMAT(CREATED_DATE,'%Y-%m-%d')
ORDER BY BOARD_ID DESC

-- 참고: https://school.programmers.co.kr/questions/83407
