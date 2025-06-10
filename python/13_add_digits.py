'''
문제: 자릿수 더하기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12931
'''

# 문자로 바꿔서 자릿수를 하나씩 더하기
def solution(n):
    sum = 0
    for s in str(n):
        sum += int(s)
    return sum

# 튜터님 코드 - 10으로 나누면 자릿수 구할 수 있음
def solution(n): 
    rem = 0
    while n:  # while True
        rem += n % 10
        n = n//10 
        # if n // 10 == 0: break 로 할 수도 있음
    return rem

# map 이용
def solution(number):
    return sum(map(int, str(number))) # 문자로 바꾸고 map으로 각각 하나씩을 int로 바꿈

# 리스트 변환
def solution(number):
    return sum([int(i) for i in str(number)])

# 재귀함수
def solution(number):
    if number < 10:
        return number
    return number%10 + solution(number//10)
