'''
문제: 내적
분류: 코딩테스트 연습 - 월간 코드 챌린지 시즌1
링크: https://school.programmers.co.kr/learn/courses/30/lessons/70128
'''

# range(len()) 사용 O
def solution(a, b):
    answer = 0
    for i in range(len(a)):
        answer += a[i]*b[i]
    return answer
