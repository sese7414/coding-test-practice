'''
문제: 몫 구하기
분류: 코딩테스트 입문
링크: https://school.programmers.co.kr/learn/courses/30/lessons/120805
'''

def solution(num1, num2):
    return num1//num2

# lamda 사용
solution = lambda num1, num2: num1//num2

# floordiv
solution = int.__floordiv__

# int로 소수점 날리기
def solution(num1, num2):
    answer = num1 / num2
    return int(answer)

# divmod 함수 사용 -> 몫과 나머지 구할 수 있음
def solution(num1, num2):
    return divmod(num1, num2)[0]

# 참고: 프로그래머스 다른 사람 풀이 보기
