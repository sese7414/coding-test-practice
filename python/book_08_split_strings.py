'''
문제: 문제 8) 문자열 나누기
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85896/challenges?language=python3
'''

def solution(s):
    answer = 0
    same_0 = 0
    not_0 = 0
    x = ""  # 처음엔 비워둡니다.
    
    for char in s:
        # 1. 횟수가 초기화된 상태라면, 현재 글자가 새로운 기준(x)이 됩니다.
        if same_0 == 0:
            x = char
            
        # 2. 글자 비교 후 카운트 증가
        if char == x:
            same_0 += 1
        else:
            not_0 += 1
            
        # 3. 두 카운트가 같아지는 순간 분리!
        if same_0 == not_0:
            answer += 1
            same_0 = 0  # 다음 상태를 위해 초기화
            not_0 = 0   # 다음 상태를 위해 초기화
            
    # 루프가 끝났는데 초기화되지 않고 숫자가 남아있다면, 
    # 읽다 남은 짜투리 문자열이 있다는 뜻이므로 +1을 해줍니다.
    if same_0 > 0:
        answer += 1
        
    return answer
