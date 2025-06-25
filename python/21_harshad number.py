'''
문제: 하샤드 수
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12947
'''

# 기본
def solution(x):
    sum = 0
    for i in str(x):
        sum += int(i)
    if x%sum == 0:
        answer = True
    else:
        answer = False
    return answer

# 줄임 버전
def solution(x):
    sum = 0
    for i in str(x):
        sum += int(i)
    return not (x%sum)

# 초줄임 버전
def solution(x):
  return x%sum(int(i) for i in str(x)) == 0
        # sum(map(int, str(x)))
