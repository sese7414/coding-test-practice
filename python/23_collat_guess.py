'''
문제: 콜라츠 추측
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12943
'''

def solution(num):
    work = 0
    if num == 1:
        return 0
    
    while work < 500:
        if num == 1:
            return work
            break -- 없어도 됨!!
        elif num % 2 == 0:
            num = num / 2
        else:
            num = num * 3 + 1
        work += 1
        
    return -1

-- 내 코드 다른 버전
def solution(num):
    work = 0
    if num == 1:
        return 0
    
    while work < 500:
        if num == 1:
            break
        elif num % 2 == 0:
            num = num / 2
        else:
            num = num * 3 + 1
        work += 1
      
    return work if num == 1 else -1

-- while문 더 줄인 버전
def solution(num):
    work = 0
    while num != 1 and work < 500:
        num = 3 * num + 1 if num % 2 else num // 2
        work += 1

    return work if work < 500 else -1

-- for문 버전
def solution(num):
  for i in range(500):
    if num == 1:
      return i
    num = num * 3 + 1 if num % 2 else num / 2
  return -1


