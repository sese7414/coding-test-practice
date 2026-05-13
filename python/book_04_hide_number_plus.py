'''
문제: 문제 4) 숨어있는 숫자의 덧셈(2)
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85892/challenges?language=python3
'''
# 최대한 Python의 장점을 살리려 노력함. for문에서 숫자 반복이 아니라 문자 하나씩 인식할 수 있도록 함.
# *숫자가 마지막에 연속으로 있을 때 인식이 안 돼서 for문 끝나고 한 번 더 더해줌.
def solution(my_string):
    answer = 0
    num = ''
    for char in my_string:
        if char.isdigit(): 
            num += char
        elif num.isdigit(): # gemini said 비어있지 않기 때문에 num:으로 해도 괜찮다고 함.
            answer += int(num)
            num = ''
    if num.isdigit():
        answer += int(num)
    return answer

# 파이썬 답이라고 올려주신 게 있는데 진짜 책의 답인지 푼 사람의 답인지는 잘 모르겠다.
# 리스트 숫자로 접근해서 풀었는데 너무 복잡한 것 같아서 올리지는 않겠다.

# gemini가 추천해준 코드
# 문자열 치환 적용
def solution(my_string): # 숫자인 건 그대로 아닌 건 띄어쓰기로 치환
    num = ''.join(i if i.isdigit() else ' ' for i in my_string)
    answer = sum(int(i) for i in num.split())
    return answer

# 정규식 사용
import re

def solution(my_string):
    # 숫자가 아닌 것(\D)을 기준으로 쪼갠 뒤, 빈 문자열이 아닌 것만 숫자로 변환해 합산
    numbers = re.findall('\d+', my_string) # 'r\d+'랑 차이 없음 \d: 숫자 +: 1개 이상
    return sum(map(int, numbers)) # map으로 모든 리스트 요소에 int 함수 적용

# r prefix에 관한 설명
https://velog.io/@yoopark/r-prefix-in-regexp



