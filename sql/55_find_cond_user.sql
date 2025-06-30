/*
문제: 조건에 맞는 사용자 정보 조회하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/164670
*/

-- 내 방법: JOIN + GROUP BY + HAVING
SELECT  USER_ID, NICKNAME, 
        CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS "전체주소", 
        CONCAT(SUBSTR(TLNO, 1, 3), '-',  -- LEFT(TLNO, 3)
               SUBSTR(TLNO, 4, 4), '-', 
               SUBSTR(TLNO, 8, 4)) "전화번호" -- RIGHT(TLNO, 4)
FROM USED_GOODS_BOARD b INNER JOIN USED_GOODS_USER u
ON b.WRITER_ID = u.USER_ID
GROUP BY WRITER_ID
HAVING COUNT(BOARD_ID) >= 3
ORDER BY 1 DESC

-- JOIN을 GROUP BY+HAVING 조건을 건 테이블과 하기
SELECT  USER_ID, NICKNAME, 
        CONCAT(CITY, ' ', STREET_ADDRESS1, ' ', STREET_ADDRESS2) AS "전체주소", 
        CONCAT(SUBSTR(TLNO, 1, 3), '-', SUBSTR(TLNO, 4, 4), '-', SUBSTR(TLNO, 8, 4)) "전화번호"
FROM USED_GOODS_USER u INNER JOIN (
        SELECT WRITER_ID 
        FROM USED_GOODS_BOARD
        GROUP BY WRITER_ID
        HAVING COUNT(*) >= 3
) b
ON b.WRITER_ID = u.USER_ID
ORDER BY 1 DESC
-- 참고: https://school.programmers.co.kr/questions/89145

