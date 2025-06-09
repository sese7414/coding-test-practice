'''
문제: 짝수와 홀수
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12937
'''

# if문 정석
def solution(num):
    if num % 2 == 0:  # num % 2 조건에 return odd, else even 해도 됨
        return 'Even'
    else:
        return 'Odd'

# if문 한 줄 버전
def solution(num):
    return 'Even' if num % 2 == 0 else 'Odd'

# 비트 연산자 버전
def evenOrOdd(num):
    return ["Even", "Odd"][num & 1]
