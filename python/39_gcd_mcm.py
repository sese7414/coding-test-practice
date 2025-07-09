'''
문제: 최대공약수와 최소공배수
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12940
'''

# 유클리드 호제법, while문
def solution(n, m):
    if n < m:    # max(a, b), min(a, b)
        big = m
        small = n
    else:
        big = n
        small = m
    while True:  # while small: big, small = small,  big % small 
        rem = big % small
        if rem == 0:
            break
        big, small = small, rem
    
    answer = [small, n*m//small]  # answer = [ big, n*m//big)]
    return answer
# 참고 사이트: 
'''
최소공배수와 최대공약수의 관계:
두 수의 곱은 최대공약수와 최소공배수의 곱과 같습니다. 
예시: 12와 18의 최대공약수는 6이고 최소공배수는 36입니다.
12 × 18 = 216
6 × 36 = 216 
https://m.blog.naver.com/eandimath/221704180761
최대공약수는 두 개 이상의 정수의 공통된 약수 중 가장 큰 수를 의미합니다. 최대공약수를 구하는 방법에는 여러 가지가 있지만, 대표적으로 소인수분해를 이용하는 방법과 나눗셈을 이용하는 방법이 있습니다. 
2. 나눗셈을 이용한 최대공약수 구하는 법 (유클리드 호제법): 
① 큰 수를 작은 수로 나눕니다: 두 수 중 큰 수를 작은 수로 나눕니다. 
② 나머지가 0이 될 때까지 나눗셈을 반복합니다: 나머지가 0이 될 때까지 나눗셈을 계속합니다. 이때, 나눗셈을 할 때마다 나누는 수는 다음 나눗셈의 피제수(나누어지는 수)가 되고, 나머지는 나누는 수가 됩니다. 
③ 마지막 나눗셈의 나누는 수가 최대공약수입니다: 나머지가 0이 되었을 때, 마지막 나눗셈의 나누는 수가 최대공약수가 됩니다. 
예시:
12와 18의 최대공약수를 구해봅시다. 
18 ÷ 12 = 1 (나머지 6)
12 ÷ 6 = 2 (나머지 0) 
마지막 나눗셈의 나누는 수 6이 최대공약수입니다. 
https://thebook.io/007033/0124/#:~:text=그렇다면%203과%2018의%20최대공약수는%20무엇일까요?%20먼저%2018을,나머지가%200이면%20바로%20최대공약수를%20구할%20수%20있습니다.

'''

# 재귀함수 사용
def solution(n, m):
    gcd = lambda a,b : b if not a%b else gcd(b, a%b)
    lcm = lambda a,b : a*b//gcd(a,b)
    return [gcd(n, m), lcm(n, m)]

# 라이브러리 사용
from fractions import gcd
def solution(n, m):
    g = gcd(n,m)
    l = (n*m)//g
    return [g,l]
