'''
문제: 문자열을 정수로 바꾸기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12925
'''

# 풀고도 놀랐습니다,,,
def solution(s):
    return int(s)

# 알고리즘식으로 풀었다면
def solution(s):
    result = 0
    if s[0] == '-':
        result += int(s[1:])
        result *= -1
    elif s[0] == '+':
        result += int(s[1:])
    else:
        result = int(s)
    return result

# 뒤에서부터 보면서 자릿수*자리 더하기
def solution(str): 
    result = 0
    for idx, number in enumerate(str[::-1]):
        if number == '-':
            result *= -1
        else:
            result += int(number) * (10 ** idx)
    return result
