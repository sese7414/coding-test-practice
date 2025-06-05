'''
문제: 짝수의 합
분류: 코딩테스트 입문
링크: https://school.programmers.co.kr/learn/courses/30/lessons/120831
'''

# 내 풀이 - for문
def solution(n):
    even_sum = 0
    for i in range(0, n+1, 2):
        even_sum += i
    return even_sum

# 깔끔한 코드 - range만 사용
def solution(n):
    return sum(range(0, n+1, 2))

# 수학적인 코드
def solution(n):
    return 2*(n//2)*((n//2)+1)/2
'''
짝수는 2, 4, 6, ..., 2k 형태이고,
n 이하의 짝수 개수는 n // 2개입니다.
이 짝수들은 다음과 같이 표현할 수 있어요:

2 + 4 + 6 + ... + 2k
= 2 * (1 + 2 + 3 + ... + k)
= 2 * (k(k+1)/2)
'''
