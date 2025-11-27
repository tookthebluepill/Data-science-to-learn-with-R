#이상값
#다른 관측값과 멀리 떨어진 관측값

#이상값이 포함된 함수 데이터
patients=data.frame(name=c("환자1","환자2","환자3","환자4","환자5"), age=
                      c(22,20,25,30,27), gender=factor(c("M","F","M","K","F")), blood.type=
                      factor(c("A","O","B","AB","C")))
patients

#성별과 혈액형에서 이상값 제거
patients_outrm1=patients[(patients$gender=="M"|patients$gender=="F") &
                           (patients$blood.type=="A"|patients$blood.type=="B"|
                              patients$blood.type=="0"|patients$blood.type=="AB"), ]
patients_outrm1

#이상값이 포함된 함수 데이터
patients=data.frame(name=c("환자1","환자2","환자3","환자4","환자5"), age=
                      c(22,20,25,30,27), gender=c(1,2,1,3,2), blood.type=
                      c(1,3,2,4,5))
patients

#성별에 있는 이상값을 결측값으로 변경
patients$gender=ifelse((patients$gender<1|patients$gender>2), NA, patients$gender)
patients

#혈액형에 있는 이상값도 결측값으로 변경
patients$blood.type=ifelse((patients$blood.type<1|patients$blood.type>4), NA,
                           patients$blood.type)
patients

#결측값을 모두 제거
patients[!is.na(patients$gender)&!is.na(patients$blood.type), ]

#boxplot
#이상값으로 판단하기에 명확하지 않은 값을 boxplot을 활용해 처리
boxplot(airquality[, c(1:4)]) #Ozone, Solar.R, Wind, Temp에 대한 boxplot
boxplot(airquality[, 1])$stats

air=airquality
table(is.na(air$Ozone))

#이상값을 NA로 변경
air$Ozone=ifelse(air$Ozone<1|air$Ozone>122, NA, air$Ozone)
table(is.na(air$Ozone))

#NA 제거
air_narm=air[!is.na(air$Ozone), ]
mean(air_narm$Ozone)