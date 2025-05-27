/*
문제: 고양이와 개는 몇 마리 있을까
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
*/

SELECT  ANIMAL_TYPE,
        COUNT(*) as count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Cat' or ANIMAL_TYPE = 'Dog'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE
