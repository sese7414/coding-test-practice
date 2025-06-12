/*
문제: 3월에 태어난 여성 회원 목록 출력하기
분류: SELECT
링크: https://school.programmers.co.kr/learn/courses/30/lessons/131120
*/

SELECT  MEMBER_ID, MEMBER_NAME,
        GENDER,
        DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
WHERE GENDER = 'W' AND MONTH(DATE_OF_BIRTH) = 3 -- DATE_OF_BIRTH LIKE '%-03-%'
  -- GENDER REGEXP '[wW]'
      AND TLNO IS NOT NULL -- != NULL 도 가능하긴 함.
      ORDER BY MEMBER_ID
