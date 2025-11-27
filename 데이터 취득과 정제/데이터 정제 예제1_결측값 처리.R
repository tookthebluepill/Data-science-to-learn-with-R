#사용자 정의 함수
#함수명=function(전달인자1, 전달인자2, ...) {
# 함수 동작 시 수행할 코드
# return(반환값)
#}

fact=function(x) {
  fa=1
  while(x>1) {
    fa=fa*x
    x=x-1
  }
  return(fa)
}
fact(5)

my.is.na<-function(x){
  table(is.na(x))
}

my.is.na(airquality)
table(is.na(airquality))

#통계에서 누락된 데이터 또는 데이터 수집 단계에서 변수에 값이 저장되지 않아
#발생하는 값

#결측값 처리
#is.na 함수를 이용해 결측값 처리
str(airquality)
head(is.na(airquality))
#NA개수 확인
table(is.na(airquality))
table(is.na(airquality$Temp))
table(is.na(airquality$Ozone))
#NA가 없으면 평균이 구해지고, 있으면 안 구해진다
mean(airquality$Temp)
mean(airquality$Ozone)

#Ozone 속성에서 NA가 없는 값만 추출
air_narm=airquality[!is.na(airquality$Ozone), ]
air_narm

#결측값이 제거된 데이터에서는 mean 함수가 정상적으로 동작함
mean(air_narm$Ozone)
#na.omit 함수를 이용해 결측값 처리
air_narm1=na.omit(airquality)
mean(air_narm1$Ozone)

#함수 속성인 na.rm을 이용해 결측값 처리
mean(airquality$Ozone, na.rm=T)

#na.omit함수를 이용한 경우에만 평균값이 다르다
#na.omit함수가 NA를 하나라도 포함된 행은 모두 삭제하기 때문이다
table(is.na(airquality))
table(is.na(airquality$Ozone))
table(is.na(airquality$Solar.R))
air_narm=airquality[!is.na(airquality$Ozone) &is.na(airquality$Solar.R), ]
mean(air_narm$Ozone)