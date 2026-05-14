'''
문제: 문제 5) 인덱스 바꾸기
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85893/challenges?language=python3
'''
# temp도 안 쓰고 바로 index 선택해서 assign해줌.
def solution(my_string, num1, num2):
    str_lst = list(my_string)
    str_lst[num2], str_lst[num1] = str_lst[num1], str_lst[num2]
    
    return ''.join(str_lst)
