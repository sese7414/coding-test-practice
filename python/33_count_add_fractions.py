'''
문제: 약수의 개수와 덧셈
분류: 코딩테스트 연습 - 월간 코드 챌린지 시즌2
링크: https://school.programmers.co.kr/learn/courses/30/lessons/77884
'''

# 아래 사이트와 이전 코드를 참고해서 약수 개수를 일일이 구하고 홀수/짝수인지 판별해서 계산.
import math
def solution(left, right):
    answer = 0
    for i in range(left, right + 1):
        cnt = 0
        for j in range(1, int(math.sqrt(i)) + 1):
            if j*j == i:
                cnt += 1
            elif i % j == 0:
                cnt += 2

        if cnt % 2 == 0:
            answer += i
        else:
            answer -= i
    return answer

# 참고: 약수의 합 구하기 문제 https://github.com/sese7414/coding-test-practice/blob/main/python/14_sum_divisor.py
# https://chwan.tistory.com/entry/Java-약수의-개수-구하기

# 논리적으로 위의 거로 생각해봤을 때 그러면 루트 씌운 값이 정수이면 약수 개수가 홀수가 되니까 바로 계산해줌.
import math
def solution(left, right):
    answer = 0
    for i in range(left, right + 1):
        if math.sqrt(i).is_integer(): # int(i**0.5) == i**0.5 도 똑같음
            answer -= i
        else:
            answer += i
    return answer
# 제곱수가 아닌 수의 약수들은 각자 곱해지는 쌍이 있으니까 무조건 약수의 개수가 짝수가 나온다. 
