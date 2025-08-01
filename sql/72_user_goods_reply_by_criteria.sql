/*
문제: 조건에 부합하는 중고거래 댓글 조회하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/164673
*/

SELECT  TITLE, B.BOARD_ID, REPLY_ID, R.WRITER_ID, R.CONTENTS, 
        DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') CREATED_DATE
FROM USED_GOODS_BOARD B INNER JOIN USED_GOODS_REPLY R
ON B.BOARD_ID = R.BOARD_ID
WHERE B.CREATED_DATE LIKE '2022-10-%'
  -- B.CREATED_DATE BETWEEN '2022-10-01' AND '2022-10-31'
  -- DATE_FORMAT(R.CREATED_DATE, '%Y-%m') = '2022-10'
  -- B.CREATED_DATE REGEXP '2022-10'
  -- B.CREATED_DATE >= '2022-10-01' AND B.CREATED_DATE < '2022-11-01'
  -- YEAR(B.CREATED_DATE) = 2022 AND MONTH(B.CREATED_DATE) = 10
ORDER BY R.CREATED_DATE, TITLE
