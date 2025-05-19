/*
문제: 동명 동물 수 찾기
분류: GROUP
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59403
*/

SELECT NAME,
       COUNT(1) count
FROM ANIMAL_INS
WHERE NAME is not null
GROUP BY NAME
having COUNT(1) >= 2
ORDER BY NAME
