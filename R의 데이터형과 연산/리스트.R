#1. 리스트 생성
patients=data.frame(name = c("철수", "춘향", "길동"), age = c(22,20,25),
gender=factor(c("M", "F", "M")), blood.type=factor(c("A", "0", "B")))
no.patients=data.frame(day=c(1:6), no=c(50,60,55,52,65,58))

#데이터를 단순 추가
listPatients=list(patients, no.patients)
listPatients

#각 데이터에 이름을 부여하면서 추가
listPatients=list(patients=patients, no.patients=no.patients)
listPatients

#2. 리스트 요소에 접근
listPatients$patients #요소명 입력
listPatients[[1]] #인덱스 입력
listPatients[["patients"]] #요소명을 ""에 입력
listPatients[["no.patients"]] #요소명을 ""에 입력

#3. 리스트에 유용한 함수
#lapply, sapply함수: 리스트 요소에 다양한 함수 적용

#no.patients 요소의 평균을 구해준다
lapply(listPatients$no.patients, mean)

#patients 요소의 평균을 구해준다. 숫자 형태가 아닌 것은 평균이 구해지지 않는다.
lapply(listPatients$patients, mean)

sapply(listPatients$no.patients, mean)
sapply(listPatients$no.patients, mean, simplify=F)

#is.list, as.list함수: 리스트형 확인 및 변환
