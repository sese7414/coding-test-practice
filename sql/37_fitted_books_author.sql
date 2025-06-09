/*
문제: 조건에 맞는 도서와 저자 리스트 출력하기
분류: JOIN
링크: https://school.programmers.co.kr/learn/courses/30/lessons/144854
*/

SELECT  b.BOOK_ID, a.AUTHOR_NAME,
        DATE_FORMAT(b.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK b INNER JOIN AUTHOR a ON b.AUTHOR_ID = a.AUTHOR_ID
WHERE CATEGORY = '경제'
ORDER BY 3
