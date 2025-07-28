/*
문제: 입양 시각 구하기(2)
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59413
*/

-- 변수 사용
SET @HOURS = -1;  -- 변수 설정, 변수는 앞에 @로 표시!
SELECT  (@HOURS := @HOURS + 1) AS HOUR, -- 1씩 증가하는 변수
        (SELECT COUNT(HOUR(DATETIME))   -- 서브쿼리로 조회할 부분하기
         FROM ANIMAL_OUTS                 -- 변수 HOURS랑 시간이 같을 때의 횟수 - 변수가 바뀌면서 count도 달라짐.
         WHERE HOUR(DATETIME) = @HOURS) AS COUNT 
         FROM ANIMAL_OUTS
WHERE @HOURS < 23  -- 23시까지 출력해야 하니까.

-- recursive 이용
WITH RECURSIVE OUTS AS (
    SELECT 0 AS N -- 초기값

    UNION ALL

    SELECT N+1  -- 반복하면서 어떤 값을 가질 건지
    FROM OUTS
    WHERE N < 23)

SELECT O.N AS HOUR, COUNT(ANIMAL_ID) AS COUNT
FROM OUTS O
LEFT JOIN ANIMAL_OUTS A ON O.N = HOUR(A.DATETIME)
GROUP BY HOUR
ORDER BY HOUR ASC
-- 참고: https://www.mysqltutorial.org/mysql-basics/mysql-recursive-cte/
-- https://velog.io/@cyanred9/SQL-Recursive
-- https://inpa.tistory.com/entry/MYSQL-📚-RECURSIVE-재귀-쿼리#
  
-- 모든 것 UNION
select HOUR, max(COUNT) COUNT from
    (
        (select 0 HOUR, 0 COUNT) UNION 
        (select 1, 0) UNION 
        (select 2, 0) UNION 
        (select 3, 0) UNION 
        (select 4, 0) UNION 
        (select 5, 0) UNION 
        (select 6, 0) UNION 
        (select 7, 0) UNION 
        (select 8, 0) UNION 
        (select 9, 0) UNION 
        (select 10, 0) UNION 
        (select 11, 0) UNION 
        (select 12, 0) UNION 
        (select 13, 0) UNION 
        (select 14, 0) UNION 
        (select 15, 0) UNION 
        (select 16, 0) UNION 
        (select 17, 0) UNION 
        (select 18, 0) UNION 
        (select 19, 0) UNION 
        (select 20, 0) UNION 
        (select 21, 0) UNION 
        (select 22, 0) UNION 
        (select 23, 0) UNION 
        (select hour(datetime) HOUR, count(*) COUNT from animal_outs group by 1)
    ) TMP
group by 1 
order by 1 asc
