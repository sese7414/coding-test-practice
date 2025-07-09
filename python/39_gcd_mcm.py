'''
문제: 최대공약수와 최소공배수
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12940
'''

# 유클리드 호제법, while문
def solution(n, m):
    if n < m:    # max(a, b), min(a, b)
        big = m
        small = n
    else:
        big = n
        small = m
    while True:  # while small: big, small = small,  big % small 
        rem = big % small
        if rem == 0:
            break
        big, small = small, rem
    
    answer = [small, n*m//small]  # answer = [ big, n*m//big)]
    return answer

# 재귀함수 사용
def solution(n, m):
    gcd = lambda a,b : b if not a%b else gcd(b, a%b)
    lcm = lambda a,b : a*b//gcd(a,b)
    return [gcd(n, m), lcm(n, m)]

# 라이브러리 사용
from fractions import gcd
def solution(n, m):
    g = gcd(n,m)
    l = (n*m)//g
    return [g,l]
