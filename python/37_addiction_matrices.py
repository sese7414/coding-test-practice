'''
문제: 행렬의 덧셈
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12950
'''

# 이중 for 문
def solution(arr1, arr2):
    answer = []
    for x, y in zip(arr1, arr2):
        temp = [0]*len(x)
        for i in range(len(x)):
            temp[i] = x[i] + y[i]
        answer.append(temp)
    return answer

# list comprehension
def solution(arr1, arr2):
  answer = [[i + j for i, j in zip(x, y)] for x, y in zip(arr1, arr2)]
  return answer

# map, zip 사용
def solution(arr1, arr2):
    return [list(map(sum, zip(*x))) for x in zip(arr1, arr2)]
# 첫 수행시 x는 ([1, 2], [3, 4])가 되고, zip(*x)에서 *x가 튜플을 벗겨서 [1, 2], [3, 4]가 되고 zip() 내부로 들어가면 zip([1, 2], [3, 4])가 됨
# 따라서 첫번째 sum을 하면 sum(1, 3) = 4 가 됨

# numpy 사용
import numpy as np

def solution(arr1, arr2):
    A_np = np.array(arr1)
    B_np = np.array(arr2)
    result = A_np + B_np
    return result.tolist()
