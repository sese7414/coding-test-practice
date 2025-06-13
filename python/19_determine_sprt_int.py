'''
문제: 정수 제곱근 판별
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12934
'''

# 1에서 n/2+1 까지 살펴보기
def solution(n):
    for i in range(1, round(n/2+1)): # 정수 제곱근인지 확인하는 거니까 굳이 n까지 할 필요 X
        if i**2 == n:
            return (i+1)**2
    else:
        return -1
# n//2+1로 했을 때, n = 1일 때 4가 되는 테스트 놓쳐서 위와 같이 바꿈 

# 제곱근을 구해서 그 제곱근이 정수인지 판별
def solution(n):
    sqrt = n ** (1/2)

    if sqrt % 1 == 0:
        return (sqrt + 1) ** 2
    return -1  # return -1 if n**(0.5) % 1 else (n**(0.5)+1)**2

# 삼항 연산자처럼 이용되는 조건식
def solution(n):
    return n == int(n**.5)**2 and int(n**.5+1)**2 or -1
#  A and B or C -> A가 참이면 B, A가 거짓이면 C 반환
# 단, A가 숫자 0이면 예상치 못한 동작이 나올 수 있으니 조심해야 해요.
