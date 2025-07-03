'''
문제: 문자열 내림차순으로 배치하기
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12917
'''

# 내 버전
def solution(s):
    s_list = sorted(list(s), reverse = True)
    return ''.join(s_list)

# 문자열을 sorted 바로 할 수 있음 - list로 자동변환됨.
def solution(s):
    return ''.join(sorted(s, reverse=True))
