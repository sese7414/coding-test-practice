'''
문제: 배열의 평균값
분류: 코딩테스트 입문
링크: https://school.programmers.co.kr/learn/courses/30/lessons/120817
'''

# sum/len
def solution(numbers):
    return sum(numbers)/len(numbers)

# np.mean
import numpy as np
def solution(numbers):
    return np.mean(numbers)

# statistic
import statistics
def solution(numbers):
    return statistics.mean(numbers)
