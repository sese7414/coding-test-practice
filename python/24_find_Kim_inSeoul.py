'''
문제: 서울에서 김서방 찾기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12919
'''

def solution(seoul):
    # f-string
    return f"김서방은 {seoul.index('Kim')}에 있다"
    # " " 안에 ' ' 사용하기! 반대는 잘 안 됨.
    # for문 사용
    for i, value in enumerate(seoul):
        if value == 'Kim':
            return f'김서방은 {i}에 있다'
