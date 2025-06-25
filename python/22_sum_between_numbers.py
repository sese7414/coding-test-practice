'''
문제: 두 정수 사이의 합
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12912
'''

# 기본: 대소를 먼저 비교하고 작은 거에서 큰 거까지의 합을 구함
def solution(a, b):
    sum = 0
    if a < b:
        small, big = a, b
    else:
        small, big = b, a
        
    for i in range(small, big+1):
        sum += i
    return sum 

# 둘의 차이가 양의 값인지 음의 값인지 확인해서 부호에 맞게 range 설정
def solution(a, b):
    sum = 0
    sign = 1 if (b-a) == 0 else (b-a) // abs(b-a)
    for i in range(a, b+sign, sign):
        sum += i
    return sum

# for 문 X, sum
def solution(a, b):
    if a > b:
        a, b = b, a
    # or range(min(a, b), max(a, b) + 1)
    return sum(range(a, b + 1))

# 수학적 접근방식: 등차수열의 합 공식은 (첫째 항 + 마지막 항) * 항의 개수 / 2
def solution(a, b): # n*(a+l) / 2
    return (abs(a-b)+1)*(a+b)//2
# 참고
