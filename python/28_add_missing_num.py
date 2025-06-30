'''
문제: 없는 숫자 더하기
분류: 코딩테스트 연습 - 월간 코드 챌린지 시즌3
링크: https://school.programmers.co.kr/learn/courses/30/lessons/86051
'''

# 들어가지 않은 숫자들끼리 더하기
def solution(numbers):
    answer = 0
    for i in range(10):
        if i not in numbers:
            answer += i
    return answer # return sum(i for i in range(10) if i not in numbers)

# 0~9 리스트 만들고 들어오는 넘버 리스트 요소 삭제
def solution(numbers):
    answer = list(range(10))
    for i in numbers:
        answer.remove(i)
    return sum(answer) 

# 수학적으로 생각하기! 0~9 합에서 numbers 합 빼기
def solution(numbers):
    return 45 - sum(numbers)
# 비슷한 느낌!
solution = lambda x: sum(range(10)) - sum(x)

# set로 차집합 구해서 더하기!
def solution(numbers):
    return sum(set(range(10)) - set(numbers))

