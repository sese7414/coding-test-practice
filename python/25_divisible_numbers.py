'''
문제: 나누어 떨어지는 숫자
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12910
'''

-- 맨 처음 버전
def solution(arr, divisor):
    answer = []
    for i in range(len(arr)):
        if arr[i]%divisor == 0:
            answer.append(arr[i])
    if len(answer) == 0:
        answer.append(-1)
    return sorted(answer)

-- 오늘 푼 버전: 코드가 더 간단해짐!
def solution(arr, divisor):
    answer = []
  -- list comprehenshion: answer = [i for i in arr if i % divisor == 0]
    for i in arr:  
        if i % divisor == 0:
            answer.append(i)
    if len(answer) == 0:
        answer.append(-1)
    return sorted(answer) -- return sorted(answer) if len(answer) != 0 else [-1]

-- 한줄 코딩
def solution(arr, divisor): return sorted([n for n in arr if n%divisor == 0]) or [-1]
-- or은 sorted()가 0일때 실행됨!



