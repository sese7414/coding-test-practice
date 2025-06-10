'''
문제: 약수의 합
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12928
'''

# 1~n까지 모두 확인해서 더하기
def solution(n):
    sum = 0
    for i in range(1, n+1):
        if n % i == 0:
            sum += i
    return sum

# 다른 사람들 코드
# list comprehension
def solution(n):
  return sum([i for i in range(1, n+1] if n % i == 0)

# num / 2 의 수들만 검사
def solution(num):
    return num + sum([i for i in range(1, (num // 2) + 1) if num % i == 0])

# filter 적용
def solution(num):
    return sum(filter(lambda x: num % x == 0, range(1, num + 1)))

# sqrt(num) 까지만 검사
from math import sqrt
def solution(num):
    sq = int(sqrt(num)) # num**(1/2) 도 가능
    a = [i for i in range(1,sq+1) if num%i==0]
    a.extend([num//d for d in a])
    return sum(set(a))

# sqrt 2번째 버전
def solution(n):
    divisor = []
    for i in range(1, int(n**(1/2))+1):
        if n % i == 0:
            divisor.append(i)
            if i != n//i: # 중복 제외하려고 이렇게 한 듯
                divisor.append(n//i)
    return sum(divisor)
# https://kbw1101.tistory.com/32
