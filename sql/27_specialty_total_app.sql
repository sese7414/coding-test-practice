/*
문제: 진료과별 총 예약 횟수 출력하기
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/132202
*/

-- YEAR, MONTH 함수 사용
SELECT  MCDP_CD '진료과 코드',
        COUNT(*) '5월예약건수'  -- 잘못한 점!! 예약한 환자 수이기 때문에 DISTINCT PT_NO 해야 함!!!
FROM APPOINTMENT
WHERE YEAR(APNT_YMD) = 2022 AND MONTH(APNT_YMD) = 5
GROUP BY MCDP_CD
ORDER BY 2, 1

-- DATE_FORMAT 사용
SELECT  MCDP_CD '진료과 코드',
        COUNT(*) '5월예약건수'
FROM APPOINTMENT
WHERE DATE_FORMAT(APNT_YMD, '%Y%m') = 202205
GROUP BY MCDP_CD
ORDER BY 2, 1
        
-- LIKE 사용
SELECT  MCDP_CD '진료과 코드',
        COUNT(*) '5월예약건수'
FROM APPOINTMENT
WHERE APNT_YMD LIKE '2022-05%'
GROUP BY MCDP_CD
ORDER BY 2, 1

-- BETWEEN 사용
SELECT  MCDP_CD '진료과 코드',
        COUNT(*) '5월예약건수'
FROM APPOINTMENT
WHERE APNT_YMD BETWEEN '2022-05-01 00:00:00' AND '2022-05-01 00:00:00'
GROUP BY MCDP_CD
ORDER BY 2, 1
ORDER BY 1
