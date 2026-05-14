'''
문제: 문제 6) 문자열 밀기
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85894/challenges?language=python3
'''
# index 선택으로 생각해서 돌아돌아 왔다. slicing으로 하면 깔끔하게 바로 된다!
def solution(A, B):
    if A == B:
        return 0
    
    for i in range(len(A)-1, -1, -1):
        temp = A[i:] + A[:i]
        if temp == B:
            return len(A)-i

    return -1

# 다른 사람 답안 참고
# B를 업데이트 하면서 숫자를 세고 그 숫자를 반환
def solution(A, B):
    cnt = 0
    for i in range(len(A)):
        if A==B:
            return cnt
        else:
            B = B[1:]+B[0]
            cnt += 1
    return -1

# lambda와 find 함수 사용
solution=lambda a,b:(b*2).find(a)
# find는 찾는 값이 존재하지 않으면 -1 반환
# b를 2배로 늘리고 a가 되는 인덱스 반환
# a를 2배로 늘리지 않는 이유: 한 번 밀면 뒤 문자가 앞으로 오기 때문에 a를 2배로 늘리면 뒤 문자가 앞에 오는 것을 적용하지 못함.

