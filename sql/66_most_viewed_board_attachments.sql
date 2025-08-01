/*
문제: 조회수가 가장 많은 중고거래 게시판 첨부파일 조회하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/164671
*/

-- WHERE 서브쿼리
SELECT CONCAT('/home/grep/src/', B.BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) FILE_PATH
FROM USED_GOODS_BOARD B LEFT JOIN USED_GOODS_FILE F
ON B.BOARD_ID = F.BOARD_ID
WHERE VIEWS = (  -- BOARD_ID도 가능
    SELECT MAX(VIEWS)
    FROM USED_GOODS_BOARD
)
ORDER BY FILE_ID DESC

-- WITH 
WITH MAX_VIEWS AS (
    SELECT *  --ORDER BY 대신 RANK() OVER (ORDER BY VIEWS DESC) RNK
    FROM USED_GOODS_BOARD 
    ORDER BY VIEWS DESC
    LIMIT 1
)
SELECT CONCAT('/home/grep/src/', M.BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) FILE_PATH
FROM MAX_VIEWS M LEFT JOIN USED_GOODS_FILE F
ON M.BOARD_ID = F.BOARD_ID
ORDER BY FILE_ID DESC
