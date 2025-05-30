/*
문제: 자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/151137
*/

-- like 사용
SELECT  CAR_TYPE,
        COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE '%통풍시트%' OR OPTIONS LIKE '%열선시트%' 
    OR OPTIONS LIKE '%가죽시트%'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
-- in이 안 되는 이유
-- '주차~, 통풍시트, 가죽시트' -> 이런식으로 되어있기 때문에 부분문자열을 찾는 like를 써야 함!

-- INSTR 사용
SELECT  CAR_TYPE,
        COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE INSTR(OPTIONS, '통풍시트') > 0  OR
     INSTR(OPTIONS, '열선시트') > 0 OR
     INSTR(OPTIONS, '가죽시트') > 0
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
-- INSTR(열, 찾고 싶은 문자열) -> 찾고 싶은 문자열의 위치 반환
-- https://sjparkk-dev1og.tistory.com/180

-- LOCATE 사용
FROM CAR_RENTAL_COMPANY_CAR
WHERE LOCATE('통풍시트', OPTIONS) > 0  OR
     LOCATE('열선시트', OPTIONS) > 0 OR
     LOCATE('가죽시트', OPTIONS) > 0
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE
-- INSTR과 argument 넣는 게 반대임.

-- REGEXP 사용
SELECT  CAR_TYPE,
        COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS REGEXP '통풍시트|열선시트|가죽시트'
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE

-- 참고 블로그: https://20240228.tistory.com/210
