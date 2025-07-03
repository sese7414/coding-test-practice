/*
문제: 자동차 대여 기록에서 장기/단기 대여 구분하기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/151138
*/

-- 빌린 당일에 반납을 해도 1일 대여했다고 치기 때문에 29일로 해줘야 한다!
-- DATEDIFF 함수는 '앞 날짜 - 뒤 날짜' 이기 때문에 30일을 정확하게 세기 위해서는 +1을 해줘야 두 시점 간의 정확한 일 수가 나옵니다
SELECT  HISTORY_ID, CAR_ID,
        DATE_FORMAT(START_DATE, '%Y-%m-%d') START_DATE,
        DATE_FORMAT(END_DATE, '%Y-%m-%d') END_DATE,
        CASE WHEN DATEDIFF(END_DATE, START_DATE) + 1 >= 30 THEN '장기 대여'
             ELSE '단기 대여' END RENT_TYPE
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
-- 다른 방법
WHERE START_DATE LIKE '2022-09-%'
-- WHERE START_DATE REGEXP '2022-09'
-- WHERE DATE_FORMAT(START_DATE, '%Y-%m') = '2022-09'
-- WHERE LOCATE('2022-09', START_DATE)
-- WHERE INSTR(START_DATE, '2022-09')
ORDER BY HISTORY_ID DESC
