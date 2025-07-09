'''
문제: 3진법 뒤집기
분류: 코딩테스트 연습 - 월간 코드 챌린지 시즌1
링크: https://school.programmers.co.kr/learn/courses/30/lessons/68935
'''

# while문 - runtime error
def solution(n):
    rem = []

    while n >= 3:
        rem.append(n % 3)
        n = n // 3
    rem.append(n)
    
    answer = 3*rem[0] + rem[1]
    for i in range(2,len(rem)):
        answer = answer*3 + rem[i]
    return answer
# 참고: https://velog.io/@kihyeon8949/Algorithm-3진법-뒤집기

# GPT한테 물어봤는데 맘에 안 듦
def solution(n):
    three = []
    answer = 0
    while n > 0:
        three.append(n % 3)
        n = n // 3
    three.reverse()
    for i in range(len(three)):
        answer += (3**i) * three[i]
    return answer

# 내가 원했던 코드 - 제일 첫번째 코드에서 rem list를 없애고 while문 하나만 쓰고 싶었음
def solution(n):
    answer = 0
    while n > 0:
        answer = answer * 3 + (n % 3)
        n //= 3
    return answer

# int 함수로 3진수 -> 10진수
def solution(n):
    tmp = ''
    while n:
        tmp += str(n % 3)
        n = n // 3
    answer = int(tmp, 3)
    return answer
