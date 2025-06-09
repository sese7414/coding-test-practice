'''
문제: 평균 구하기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12944
'''

# 합/길이
def solution(arr):  
    return sum(arr)/len(arr) # 분모 0인 것을 고려하면 뒤에 if arr else 0 넣어주기

# numpy 사용
import numpy as np
def solution(arr):
    return np.mean(arr)

# statistics 사용
import statistics
def solution(arr):
    return statistics.mean(list)

# 분모 0인 것을 고려하면 아래 코드 넣어주기
if len(list) == 0:
        return 0
  
