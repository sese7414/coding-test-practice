'''
문제: 제일 작은 수 제거하기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12935
'''

def solution(arr):
    arr.remove(min(arr))
    return arr if arr else [-1]
# 처음에 if len(arr) <= 1: return [-1]해도 됨
