'''
문제: 문제 3) OX퀴즈
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85891/challenges
'''
# 아예 풀어헤쳐서 계산! - 근데 정답을 몰라서 이렇게가 맞는지 모르겠음.. 이번에는 에러 안 뜨고 100점 받음
def solution(quiz):
    correct = []
    
    for eq in quiz:
        eq = eq.split(' ')
        x = int(eq[0])
        op = eq[1]
        y = int(eq[2])
        z = int(eq[4])

        if op == "+":
            res = x + y
        else:
            res = x - y
        
        if res == z:
            correct.append('O')
        else:
            correct.append("X")
    return correct

# for문 한 번만 썼는데도 런타임 에러 -> replace가 뭔가 걸림
def solution(quiz):
    correct = []
    
    for eq in quiz:
        eq = eq.replace('- ', '+ -').split(' ')
        answer = int(eq[0]) + int(eq[2])

        if answer == int(eq[4]):
            correct.append('O')
        else:
            correct.append("X")
    return correct

# 맨 처음 - for문 중복으로 써서 런타임 에러 걸렸을 것으로 봄
def solution(quiz):
    correct = []
    
    for eq in quiz:
        eq = eq.split('=')
        answer = 0
        for i in eq[0].replace('- ', '+ -').split('+'):
            answer += int(i)

        if answer == int(eq[1]):
            correct.append('O')
        else:
            correct.append("X")
    return correct
