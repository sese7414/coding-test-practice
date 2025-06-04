'''
문제: 각도기
분류: 코딩테스트 입문
링크: https://school.programmers.co.kr/learn/courses/30/lessons/120829
'''

# 내 풀이 - if-elif-else문
def solution(angle):
    if angle > 0 and angle < 90:
        return 1
    elif angle == 90:
        return 2
    elif angle < 180:
        return 3
    else:
        return 4

# 다른 사람들 풀이
# 수학적 공식
def solution(angle):
    answer = (angle // 90) * 2 + (angle % 90 > 0) * 1
    return answer

# 좀 더 간단한 ifelse문
 if angle<=90:
        return 1 if angle<90 else 2
    else:
        return 3 if angle<180 else 4

# 적절히 섞은 느낌
def solution(angle):
    if angle > 90:
        answer = int(angle / 90) + 2
    else:
        answer = int(angle / 90) + 1
    return answer 
