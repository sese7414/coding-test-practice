'''
문제: 핸드폰 번호 가리기
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12948
'''

# slicing
def solution(phone_number):
    block = len(phone_number[:-4])
    answer = '*'*block + phone_number[-4:]
    return answer

# 숏코딩
def solution(phone_number):
    return '*'*len(phone_number[:-4]) + phone_number[-4:]
    # (len(phone_number) - 4)

# 정규식
import re

def solution(phone_number):
    p = re.compile(r'\d(?=\d{4})')
    return p.sub("*", phone_number, count = 0)
