'''
문제: 옹알이 (1)
분류: [도서실습] 내일은 코딩테스트 with 파이썬(자료구조와 알고리즘의 기초부터 실전까지)
     파트1.문자열 다루기
링크: https://school.programmers.co.kr/tryouts/85889/challenges
'''
# 너무 오랜만에 코테 문제를 풀어서 생각을 못했는데 질문에서 바로 답을 봐버렸다,,,
# v1 - replace
def solution(babbling):
    answer = 0
    possible = ['aya', 'ye', 'woo', 'ma']
    for word in babbling:
        for possible_word in possible:
            word = word.replace(possible_word, "1")
        if word.replace("1", "") == "":
            answer += 1
    return answer

# v2 - 조합을 만들면서 확인
def solution(babbling):
    prons = ['aya', 'ye', 'woo', 'ma']
    pronable = 0
    
    def bt(strs):
        nonlocal pronable
        if strs in babbling:
            pronable += babbling.count(strs)
        
        for pron in prons:
            if pron not in strs:
                bt(strs + pron)
            
    bt("")
    return pronable

'''
조합을 완전히 만들어서 하는 방법이나 조합을 만들면서 하는 방법보다
replace 함수 사용으로 하는 게 시간 복잡도, 가독성, 메모리 측면에서 모두 좋음
백트래킹: $O(N!)$ (조합 생성 시간)치환: $O(N \times M)$ ($N$은 단어 개수, $M$은 발음 종류)

'''
