'''
문제: 부족한 금액 계산하기
분류: 코딩테스트 연습 - 위클리 챌린지
링크: https://school.programmers.co.kr/learn/courses/30/lessons/82612
'''

# for문 정석적으로 풀기
def solution(price, money, count):
    for i in range(count):
        money -= price*(i+1)
    return 0 if money >= 0 else money*(-1)

# 등차수열의 합 이용해서 수학적으로 풀기!
def solution(price, money, count):
    total_price =   (price + price*count) * count / 2
    return 0 if (money - total_price) >= 0 else (money - total_price)*(-1)

# 나보다 더 똑똑한 사람들...
def solution(price, money, count):
    return max(0,price*(count+1)*count//2-money)
solution = lambda price, money, count: max(0, count * (count + 1) // 2 * price - money)

# while문
def solution(price, money, count):
    answer = 0
    while count > 0:
        answer += price*count
        count -=1

    return answer-money if answer-money >0 else 0
