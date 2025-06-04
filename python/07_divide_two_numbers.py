'''
문제: 두 수의 나눗셈
분류: 코딩테스트 입문
링크: https://school.programmers.co.kr/learn/courses/30/lessons/120802
'''

# 내 풀이 - 문자로 바꿔서 소수점 이하 버림
def solution(num1, num2):
    answer = str((num1/num2)*1000)
    return int(answer.split('.')[0])

# 다른 사람들 풀이
## 근데 int로 하면 그냥 소수점 이하 버려짐
def solution(num1, num2):
    return int(num1 / num2 * 1000) # 차례대로 계산하니까 괜춘

# 1로 나눈 몫으로 소수점 이하 버리기
def solution(num1, num2):
    return (num1 / num2 * 1000)//1

# lambda 사용 - 여기서 x, y < 100이라는 제한이 있기에 1000 먼저 곱해도 괜춘
solution = lambda x, y: 1000 * x // y

# math 모듈에서의 trunc() or floor()(:-는 안 되는 것 같아서 코드는 적지 않음) 사용
import math

def solution(num1, num2):
    return math.trunc(num1 / num2 * 1000) 
