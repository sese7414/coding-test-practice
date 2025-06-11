'''
문제: 나머지가 1이 되는 수 찾기
분류: 코딩테스트 연습 - 월간 코드 챌린지 시즌3
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12928
'''

# 1~n-1까지 확인하면서 나머지가 1인 것 찾아 바로 반환
def solution(n):
    for i in range(1, n):
        if n % i == 1:
            return i

# n-1의 가장 작은 약수 찾기
def solution(n):
    for i in range(2, n):
        if (n-1) % i == 0:
            return i

# 약수 찾기할 때 sqrt(n-1) 이용
import math
def solution(n):
    x = n - 1
    if x % 2 == 0:
        return 2
    for i in range(2, int(math.sqrt(x)) + 1):
        if x % i == 0:
            return i
    return x


# while문 - n-1의 가장 작은 약수 찾기
def solution(n):
    i = 2
    while (n-1) % i:
        i += 1
    return i

