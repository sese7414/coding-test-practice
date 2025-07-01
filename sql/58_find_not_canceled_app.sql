/*
문제: 취소되지 않은 진료 예약 조회하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/132204
*/

SELECT APNT_NO, P.PT_NAME, A.PT_NO, A.MCDP_CD, D.DR_NAME, APNT_YMD
FROM APPOINTMENT A LEFT JOIN PATIENT P -- INNER JOIN도 가능!
ON A.PT_NO = P.PT_NO
LEFT JOIN DOCTOR D ON A.MDDR_ID = D.DR_ID
WHERE DATE_FORMAT(APNT_YMD, '%Y-%m-%d') = '2022-04-13' 
        -- TO_CHAR(APNT_YMD, '%Y-%m-%d') 
        -- YEAR(열) = 2022 AND MONTH(열) = 4 AND DAY(열) = 13
        -- REGEXP
AND APNT_CNCL_YN = 'N'
AND A.MCDP_CD = 'CS'
ORDER BY APNT_YMD
