/*
문제: 루시와 엘라 찾기
분류: String, Date
링크: https://school.programmers.co.kr/learn/courses/30/lessons/59046
*/

-- IN 사용
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY 1

-- REGEXP
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
-- WHERE NAME REGEXP '\\bLucy\\b|\\bElla\\b|\\bPickle\\b|\\bRogan\\b|\\bSabrina\\b|\\bMitty\\b'
WHERE NAME REGEXP '^Lucy$|^Ella$|^Pickle$|^Rogan$|^Sabrina$|^Mitty$'
ORDER BY 1
-- 참고: https://20240228.tistory.com/209, 질문목록 2번째

/*
보통 컬럼에 특정 문자열이 있는지 검색할 때
컬럼명 LIKE CONCAT('%', '검색할 문자열', '%') 이런 식으로 사용합니다.

그런데 반대로 특정 문자열 안에 컬럼값이 있는지 저 방법으로 검색되나 싶어
그냥 시도해봤는데 되길래 공유합니다.
https://school.programmers.co.kr/questions/25496
*/
-- 신기한 방법
SELECT ANIMAL_ID, NAME, SEX_UPON_INTAKE
FROM ANIMAL_INS
WHERE 'Lucy, Ella, Pickle, Rogan, Sabrina, Mitty' LIKE CONCAT('%', NAME, '%')
ORDER BY ANIMAL_ID;
