#1.데이터 프레임 생성
name = c("철수", "춘향", "길동")
age = c(22,20,25)
gender=factor(c("M", "F", "M"))
blood.type=factor(c("A", "0", "B"))

patients=data.frame(name, age, gender, blood.type)
patients

#다음과 같이 한 행으로 작성할 수도 있음
patients1=data.frame(name=c("철수", "춘향", "길동"), age=c(22,20,25),
                     gender=factor(c("M", "F", "M")), blood.type=factor(c("A", "O", "B")))
patients1

#name, age, gender, blood.type을 속성이라고 하고, 하나의 값을 요소라고 한다

#2.데이터 프레임 요소에 접근
patients$name #name 속성 값 출력
patients[1, ] # 1행 값 출력
patients[, 2] # 2열 값 출력
patients[3, 1] # 3행 1열 값 출력
patients[patients$name=="철수", ] #환자 중 철수에 대한 정보 추출
patients[patients$name=="철수", c("name", "age")] #철수 이름과 나이 정보만 추출

#3.데이터 프레임에 유용한 함수