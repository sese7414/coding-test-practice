'''
문제: x만큼 간격이 있는 n개의 숫자
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12954
'''

# list comprehension
def solution(x, n):
    answer = [x*i for i in range(1, n+1)]
    # return [i * x + x for i in range(n)]
    return answer

# 8번 런타임 에러 났던 코드
def solution(x, n):
    answer = [i for i in range(x,x*(n+1), x)]
    return answer

# append
def solution(x, n):
    answer = []
    for i in range(1, n+1): # n
        answer.append(x*i)  # x*(i+1)
    return answer

# 다른 사람 풀이
# range to list
def solution(x, n):
    if x == 0:
        return [0]*n
    else:
        return list(range(x, x*(n+1), x))
