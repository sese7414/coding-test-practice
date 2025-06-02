'''
문제: 두 수의 합 구하기
분류: 코딩테스트 입문
링크: https://school.programmers.co.kr/learn/courses/30/lessons/120802
'''

def solution(num1, num2):
    return num1 + num2

# 신기한 코드
solution=lambda *x:sum(x)
## *x : argment로 다수의 매개변수를 튜플로 전달

# lambda 사용
solution = lambda x,y: x+y
