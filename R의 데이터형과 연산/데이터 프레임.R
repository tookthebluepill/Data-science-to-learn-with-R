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
#attach, detach 함수: 데이터 프레임의 속성명을 변수명으로 변경
head(cars)
speed #오류 발생

attach(cars) #attach함수: 데이터 프레임의 열 속성을 변수명으로 직접 이용할 수 있다.
speed
detach(cars) #detach함수:  각 속성을 변수로 사용하는 것을 해체한다.
speed

#with함수: 데이터 프레임에 다양한 함수 적용
#데이터 속성을 이용해 함수 적용
mean(cars$speed)
max(cars$speed)

with(cars, mean(speed))
with(cars, max(speed))

#subset함수: 데이터 프레임에서 일부 데이터만 추출
subset(cars, speed>20)
subset(cars, speed>20, select=c(dist))
subset(cars, speed>20, select=-c(dist))

#na.omit함수: 데이터 프레임의 결측값 제거
head(airquality)
head(na.omit(airquality))

#merge함수: 여러 데이터 프레임 병합
name = c("철수", "춘향", "길동")
age = c(22,20,25)
gender=factor(c("M", "F", "M"))
blood.type=factor(c("A", "0", "B"))

patients1=data.frame(name, age, gender)
patients1

patients2=data.frame(name, blood.type)
patients2

patients=merge(patients1, patients2, by="name")
patients

#이름이 같은 열 변수가 없다면, merge 함수의 by.x와 by.y에 합칠 때
#사용할 열의 속성명을 각각 기입해주어야 함
name1 = c("철수", "춘향", "길동")
name2 = c("민수", "춘향", "길동")
age = c(22,20,25)
gender=factor(c("M", "F", "M"))
blood.type=factor(c("A", "0", "B"))

patients1=data.frame(name1, age, gender)
patients1

patients2=data.frame(name2, blood.type)
patients2

patients=merge(patients1, patients2, by.x="name1", by.y="name2")
patients

patients=merge(patients1, patients2, by.x="name1", by.y="name2", all=TRUE)
patients

#is.data.frame, as.data.frame함수: 데이터 프레임 형식 확인 및 변환
x=array(1:12, c(3,4))
is.data.frame(x) #현재 x는 데이터 프레임이 아님
as.data.frame(x)
is.data.frame(x) #is.data.frame 함수를 호출하는 것만으로 x가 데이터 프레임으로 바뀌지 않음
x=as.data.frame(x)
x
is.data.frame(x) #x가 데이터 프레임 형식으로 변환되었음을 확인
#데이터 프레임을 변환 시 자동 지정되는 열 이름을 names 함수로 재지정함
names(x)=c("1st", "2nd", "3rd", "4rd")
x