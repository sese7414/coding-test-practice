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

# zip 사용으로 range(len()) 사용 X
def solution(a, b):
    answer = 0
    for i, j in zip(a, b):
        answer += i*j
    return answer

# 숏코딩 with list comprehension + zip
def solution(a, b):
  return sum([x*y for x, y in zip(a, b)])

solution = lambda x, y: sum(a*b for a, b in zip(x, y))

def solution(a, b):
    return sum(map(lambda i: a[i]*b[i], range(len(a))))
