/*
문제: 대여 기록이 존재하는 자동차 리스트 구하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/157341
*/

SELECT DISTINCT(rh.CAR_ID)  -- GROUP BY로 중복 제거 할 수 있음
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY rh
INNER JOIN CAR_RENTAL_COMPANY_CAR c ON rh.CAR_ID = c.CAR_ID
WHERE CAR_TYPE = '세단' AND MONTH(START_DATE) = 10
                        -- START_DATE LIKE '2022-10-%'
                        -- START_DATE BETWEEN '2022-10-01' AND '2022-10-31'
ORDER BY 1 DESC
