/*
문제: 12세 이하인 여자 환자 목록 출력하기
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/132201
*/

-- IF 함수 사용
SELECT  PT_NAME, PT_NO, GEND_CD, AGE,
        IF(TLNO IS NULL, 'NONE', TLNO) TLNO
FROM PATIENT
WHERE AGE <= 12 AND GEND_CD = 'W'
ORDER BY AGE DESC, PT_NAME
