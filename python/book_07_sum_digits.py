'''
문제: 문제 7) 자릿수 더하기
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85895/challenges
'''
# 문자열로 변환시켜서 하나씩 떨어뜨린 뒤 숫자로 바꿔 더하기
def solution(n):
    n_list = list(str(n))
    answer = sum(map(int, n_list)) # map 사용법: map(반복 적용할 함수, 반복할 객체)
    return answer

# for문 버전
def solution(n):
    answer = 0
    n_list = list(str(n))
    for num in n_list:
        answer += int(num)
    return answer
