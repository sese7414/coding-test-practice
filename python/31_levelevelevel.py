'''
문제: 수박수박수박수박수박수?
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12922
'''

# n번째까지 계속 규칙대로 반복이니까 짝수, 홀수 나눠서 계산
def solution(n):
    answer = '수박'
    if n % 2 == 0:
        return answer*(n//2)
    else:
        return answer*(n//2) + answer[0]

# 수학적인 숏코딩 by me
def solution(n):
    answer = '수박'
    return answer*(n//2) + answer[0]*(n % 2) # 나머지에 따라 홀수면 answer[0] 더하고 아니면 안 더하고!
    # '수박' * (n // 2) + '수' * (n % 2) 
    # return (answer*(n//2 + 1))[:n] # 크게 만들어서 n까지 indexing
