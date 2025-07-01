'''
문제: 가운데 글자 가져오기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12903
'''

def solution(s):
    if len(s) % 2 == 0:
        return s[(len(s)//2 - 1):(len(s)//2 +1)]
    else:
        return s[len(s)//2]

# 다른 방법 시도하다 error 남
# TypeError: slice indices must be integers or None or have an __index__ method
# int 씌워줘야 함!!
def solution(s):
    div = len(s)/2
    if div.is_integer():
        return s[(int(div) - 1):(int(div) +1)]
    else:
        return s[int(div)]
# 참고: https://velog.io/@ksolar03/파이썬-조건문-정수인지-확인하는-여러-가지-방법

# 한 줄 코딩
def solution(s):
    return s[(len(s)-1)//2 : len(s)//2 + 1]
  # len이 4면 1부터 2까지, len이 5면 2 하나만 나옴

# 인덱스 - 사용
def solution(s):
    a = len(s)
    if a % 2 == 0 :
        a = (a-2) / 2
    else :
        a = (a-1) / 2
    return str[int(a) : -int(a)]

