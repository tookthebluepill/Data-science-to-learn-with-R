#1. 배열 생성
#N차원 배열 생성
x=array(1:5, c(2,4)) # 1~5 값을 2x4 행렬에 할당
x
x[1,]
x[,2]
dimnamex=list(c("1st", "2nd"), c("1st", "2nd","3rd", "4th")) #행과 열 이름 설정
x=array(1:5, c(2,4), dimnames = dimnamex)
x
x["1st", ]
x[,"4th"]

#2차원 배열 생성
x=1:12
x
matrix(x,nrow=3) #x는 행렬로 구성할 벡터, nrow는 행과 열 수 중 하나 결정
matrix(x, nrow=3, byrow=T) #byrow는 데이터를 행 단위로 배치할지 여부
#벡터를 묶어 배열 생성
v1=c(1,2,3,4)
v2=c(5,6,7,8)
v3=c(9,10,11,12)
cbind(v1,v2,v3) #열 단위로 묶어 배열 생성
rbind(v1,v2,v3) #행 단위로 묶어 배열 생성

#2.배열 연산
#+,-: 행렬의 덧셈과 뺄셈
#*: R에서 행렬 곱셈(각 열별 곱셈)
#%*%: 수학적인 행렬 곱셈
#t(), aperm(): 전치 행렬
#solve(): 역행렬
#det(): 행렬식


x=array(1:4, dim=c(2,2)) #2x2행렬 2개를 각각 x,y에 저장
y=array(5:8, dim=c(2,2))
x
y
x+y
x-y
x*y
x %*% y
t(x)
aperm(x)
solve(x)
det(x)

#3.배열에 유용한 함수
#apply함수: 배열의 행 또는 열별로 함수 적용
x=array(1:12, c(3,4))
x
apply(x,1,mean)
apply(x,2,mean)

#dim함수: 배열의 크기(차원의 수)
x=array(1:12, c(3,4))
dim(x)

#sample함수: 벡터나 배열에서 샘플 추출
x=array(1:12, c(3,4))
sample(x) #배열 요소를 임의로 섞어 추출
sample(x, 10) #배열 요소 중 10개를 골라 추출
sample(x, 10, prob=c(1:12)/24) #각 요소별 추출 확률을 달리할 수 있음
sample(10)