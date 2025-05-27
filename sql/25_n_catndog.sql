/*
문제: 고양이와 개는 몇 마리 있을까
분류: GROUP BY
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59040
*/

-- 단순 조건 or
SELECT  ANIMAL_TYPE,
        COUNT(*) as count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE = 'Cat' or ANIMAL_TYPE = 'Dog'
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE

-- in 사용: 정확한 값이 주어졌기 때문에 in 사용 가능
SELECT  ANIMAL_TYPE,
        COUNT(*) as count
FROM ANIMAL_INS
WHERE ANIMAL_TYPE in ('Cat', 'Dog')
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE

-- like로도 하려면 할 수 있겠지만 정확한 값이 주어졌기 때문에 굳이라고 생각한다.
