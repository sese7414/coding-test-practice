'''
문제: 이상한 문자 만들기
분류: 코딩테스트 연습 - 연습문제
링크: https://school.programmers.co.kr/learn/courses/30/lessons/12930
'''

# 제일 처음 
def solution(s):
    answer = ''
    
    for word in s.split():
        new = ''
        for i in range(len(word)):
            if i % 2 == 0:
                new += word.strip()[i].upper()
            else:
                new += word.strip()[i].lower()
        answer+= ' '+new

    return answer.strip()

# 31.3점이라 왜 그런지 봤더니
# "a          a    " -> "A          A    " 중간에 공백 있는 거 살려야 해서 그랬다

# 하나하나 확인! cnt를 넣어줘서 공백이면 0으로 다시 돌아가고 넘어가기 -> 그 후 단어들이면 계속 1씩 증가
def solution(s):
    answer = ''
    cnt = 0
    
    for chr in s:
        if chr == " ":
            cnt = 0
            answer += chr
            continue
        if cnt % 2 == 0:
            answer += chr.upper()
        else:
            answer += chr.lower()
        cnt += 1
            
    return answer

# 제일 처음 코드 발전시켜서 다 정답 처리!
def solution(s):
    answer = []
    
    for word in s.split(' '): # split을 ' '하나로 안 하면 공백들이 통째로 묶여서 잘라짐!
        new = ''
        for i in range(len(word)):
            if i % 2 == 0:
                new += word.strip()[i].upper()
            else:
                new += word.strip()[i].lower()
        answer.append(new)
    return ' '.join(answer)

# 다른 사람 코드 풀이
def solution(s):
    return " ".join(map(lambda x: "".join([a.lower() if i % 2 else a.upper() for i, a in enumerate(x)]), s.split(" ")))
# enumerate를 사용해서 i 계산! 이게 더 편할 듯 그리고 나머지는 나랑 비슷한데 lambda와 map 사용으로 더 간단하게 만들었다

