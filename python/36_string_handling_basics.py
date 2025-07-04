'''
문제: 문자열 다루기 기본
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12918
'''

def solution(s):
    if len(s) != 4 and len(s) != 6:
        return False
    for ch in s:
        if ch.isdigit():
            continue
        else:
            return False
    return True

# 어차피 모두 숫자면 전체로 봤을 때도 숫자니까!
def solution(s):
  return s.isdigit() and len(s) in [4,6]

# 위랑 비슷
def solution(s):
    return s.isdigit() and len(s)==4 or len(s)==6

# try-except 사용
def solution(s):
    try:
        int(s)
    except:
        return False
    return len(s) == 4 or len(s) == 6 

# 정규식 사용
def solution(s):
    import re
    return bool(re.match("^(\d{4}|\d{6})$", s))
