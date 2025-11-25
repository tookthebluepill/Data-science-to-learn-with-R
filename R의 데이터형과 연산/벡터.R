#벡터
#1.벡터 생성
1:7
7:1
vector(length=5)

#c함수: 일반 벡터 생성
c(1:5)
c(1, 2, 3, c(4:6))
x=c(1, 2, 3)
x
y=c()
y=c(y,c(1:3))
y

#seq함수: 순열 벡터 생성
seq(from=1, to=10, by=2)
seq(1, 10, by=2)
seq(0, 1, by=0.1)
seq(0, 1, length.out=11)

#rep함수: 반복 벡터 생성
rep(c(1:3), times=2) #벡터를 2번 반복한 벡터 생성
rep(c(1:3), each=2) #벡터의 개별 요소를 2번 반복한 벡터 생성


#2.벡터 연산
x=c(2, 4, 6, 8, 10)
length(x)
x[1]
x[1, 2, 3] #오류 발생(x벡터의 1,2,3번 요소를 구할 때 이렇게 입력하면 안된다)
x[c(1,2,3)] #벡터로 묶어야한다
x[-c(1,2,3)]
x[c(1:3)]

#벡터끼리 연산
x=c(1,2,3,4)
y=c(5,6,7,8)
z=c(3,4)
w=c(5,6,7)

x+2
x+y
x+z
x+w

#3.벡터 연산에 유용한 함수
#all, any함수: 벡터 내 모든, 일부 요소의 조건 검토
x=1:10
x>5
all(x>5)
any(x>5)

#head, tail함수: 데이터의 앞,뒤 일부 요소 추출
x=1:10
head(x)
tail(x)
head(x,3)
tail(x,3)

#union, intersect, setdiff, setequal함수: 벡터 간 집합 연산
x=c(1,2,3)
y=c(3,4,5)
z=c(3,1,2)

union(x,y) #합집합
intersect(x,y) #교집합
setdiff(x,y) #차집합
setdiff(y,x) 
setequal(x,y) #두 집합이 동일한지 비교
setequal(x,z)