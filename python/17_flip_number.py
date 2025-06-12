'''
문제: 자연수 뒤집어 배열로 만들기
분류: 코딩테스트 연습 - 연습
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12932
'''

# 빈 자리 다 만들어놓고 그 자리에 넣기
def solution(n):
    str_list = list(str(n))
    n_list = [0]*len(str_list)
    for i in range(len(str_list)):
        n_list[i] = int(str_list[len(str_list)-1-i])
    return n_list

# 튜터님 코드 - 앞쪽에 계속 넣기!
def solution(n):
    n_list = []
    for s in str(n):
        n_list.insert(0, int(s))
    return n_list

# 다른 사람들 코드
# reversed 함수
def solution(n):
    return list(map(int, reversed(str(n))))

# 뒤에서부터 
def solution(n):
    return [int(i) for i in str(n)][::-1]

## 참고: https://hi-my-name-is.tistory.com/44

# 10으로 나눠서 그 자릿수를 리스트에 추가
def solution(n):
    a=[]
    while n>1:
        a.append(int(n%10))
        n/=10
    return a

# 10의 거듭제곱으로 나눈 나머지
def solution(n):
    return [n % 10**i // 10**(i-1) for i in range(1, len(str(n))+1)]
