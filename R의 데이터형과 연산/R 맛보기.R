#데이터셋 구조 확인
#cars: 데이터 내용 전체 출력
#str(cars): Structue의 약자. 데이터의 속성(Type)과 크기(Dimension)를 파악할 때 사용
str(cars)
cars

#여러 가지 시각화 옵션으로 cars 시각화
plot(cars)
plot(cars, col='blue')
plot(cars, col='blue', xlab='속도', ylab='거리')
plot(cars, col='blue', xlab='속도', ylab='거리', pch=18)

#iris 데이터
str(iris)
head(iris, 10)
plot(iris)
#Petal.Width와 Petal.Length의 상관관계를 시각화
plot(iris$Petal.Width, iris$Petal.Length, col=iris$Species)

#tips 데이터
tips=read.csv('https://raw.githubusercontent.com/mwaskom/seaborn-data/master/tips.csv')
str(tips)
head(tips, 10)
#변수별 요약 통계 summary
summary(tips)
#dplyr와 ggplot2 라이브러리 부착
library(dplyr)
library(ggplot2)
#시각화(히스토그램, 산점도)
tips%>%ggplot(aes(size)) + geom_histogram()
tips%>%ggplot(aes(total_bill, tip)) + geom_point()
tips%>%ggplot(aes(total_bill, tip)) + geom_point(aes(col=day))
tips%>%ggplot(aes(total_bill, tip)) + geom_point(aes(col=day, pch=sex), size=3)
