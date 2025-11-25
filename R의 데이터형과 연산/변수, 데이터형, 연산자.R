#변수
x = 1 #x에 1을 할당
y = 2 #y에 2를 할당
z = x + y
z

x + y = z #오류 발생

z <- x + y
z

x + y -> z
z

#대입 연산자의 차이
#=와 <-의 차이는 =보다 <-이 우선적으로 실행된다는 것이다

#데이터형
#숫자형
#int, num, cplx
x=5
y=2
x/y

xi=1+2i
yi=1-2i
xi+yi
#문자형
#chr
str = "Hello, World!"
str
#범주형
#factor: 레벨에 따라 분류된 형태
blood.type = factor(c('A', 'B', 'O', 'AB'))
blood.type
#논리형
#TRUE(T), FALSE(F)
T
F
#특수 상수
#NULL, NA, -inf, inf, NaN
xinf=Inf
yinf=-Inf
xinf/yinf