/*
문제: 자동차 평균 대여 기간 구하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/157342
*/

-- 빌린 당일에 반납을 해도 1일 대여했다고 치기 때문에 29일로 해줘야 한다!
-- DATEDIFF 함수는 '앞 날짜 - 뒤 날짜' 이기 때문에 30일을 정확하게 세기 위해서는 +1을 해줘야 두 시점 간의 정확한 일 수가 나옵니다
SELECT  CAR_ID,
        ROUND(AVG(DATEDIFF(END_DATE, START_DATE) + 1 ), 1) AVERAGE_DURATION
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
HAVING AVERAGE_DURATION >= 7
ORDER BY 2 DESC, 1 DESC
