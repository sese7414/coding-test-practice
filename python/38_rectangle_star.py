'''
문제: 직사각형 별찍기
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12969
'''

# for 문
a, b = map(int, input().strip().split(' '))
for i in range(b): # for _ in range(b): 그냥 반복만 할 때 _ 사용!
    print('*'*a)

# print만 사용
a, b = map(int, input().strip().split(' '))
print(('*'*a + '\n')*b)
