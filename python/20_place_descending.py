'''
문제: 정수 내림차순으로 배치하기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12933
'''

def solution(n):
    str_n = list(str(n))
    str_n.sort(reverse = True)
    return int(''.join(str_n))
