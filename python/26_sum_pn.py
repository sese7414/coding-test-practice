'''
문제: 음양 더하기
분류: 코딩테스트 연습 - 월간 코드 챌린지 시즌2
링크: https://school.programmers.co.kr/learn/courses/30/lessons/76501
'''

-- zip 함수 사용해서 한꺼번에 계산
def solution(absolutes, signs):
    answer = 0
    for n, s in zip(absolutes, signs):
        if s:
            answer += n*1
        else:
            answer += n*(-1)
    return answer

-- len 이용해서 동일 위치 이용
def solution(absolutes, signs):
    answer = 0
    for i in range(len(absolutes)):
        if signs[i]:
            answer += absolutes[i]*1
        else:
            answer += absolutes[i]*(-1) -- 대신 -= 하거나 -한 거 더해도 됨!
    return answer

-- 숏코딩
def solution(absolutes, signs):
    return sum(absolutes if sign else -absolutes for absolutes, sign in zip(absolutes, signs))


