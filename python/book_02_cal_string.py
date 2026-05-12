'''
문제: 문제 2) 문자열 계산하기
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85890/challenges
'''
# 연산자는 +, -만 존재. 잘못된 수식은 없다는 걸 확인해서 홀수일 때의 연산자를 확인해서 계산함.
def solution(my_string):
    answer = 0
    str_lst = my_string.split()
    
    for i in range(0, len(str_lst) + 1, 2):
        if str_lst[i-1] == '-':
            answer -= int(str_lst[i])
        else:
            answer += int(str_lst[i])
    return answer

# 빼기를 + -숫자로 바꾸기
def solution(my_string):
    answer = 0
    
    for num in my_string.replace("- ", "+ -").split("+"):
        answer += int(num)
    return answer
