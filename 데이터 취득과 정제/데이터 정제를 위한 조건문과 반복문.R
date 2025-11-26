#1. 조건문
#C, Python, Java 등 많은 언어들과 유사하다
test=c(15,20,30,NA,45)
test[test<40]
test[test%%3!=0] #나머지를 구할 때 %% 기호를 쓰고 %하나만 쓰면 오류다
test[is.na(test)]
test[!is.na(test)]
test[test%%2==0&!is.na(test)]
character=data.frame(name=c("길동", "춘향", "철수"), age=c(30,16,21),
                     gender=factor(c("M", "F", "M"))) #데이터 프레임인 경우
characters
characters[characters$gender=="F", ]
characters[characters$age<30&characters$gender=="M", ]

#if문
x=5
if(x %% 2 == 0) {
  print('x는 짝수')
}   else {
    print('x는 홀수')
}

x=-1
if(x>0) {
  print('x is a positive value')
} else if(x<0) {
  print('x is a negative value')
} else {
  print('x is zero.')
}

#x를 입력 받아 if문을 돌리는 건 어떻게 할까 궁금해서 한 번 찾아봤다.
#input 함수는 없고, R에서는 readline()함수를 사용한다
input_str <- readline(prompt = "숫자를 입력하세요: ")
x <- as.numeric(input_str) #if문에서 숫자 비교를 하려면 x가 숫자형이어야 한다.
#as.numeric()함수를 이용하여 문자열(input_str)을 숫자형(x)으로 형 변환한다

if (is.na(x)) {
  print("오류: 올바른 숫자를 입력해 주세요.")
} else if (x > 0) {
  print('x is a positive value')
} else if (x < 0) {
  print('x is a negative value')
} else {
  print('x is zero.')
}


#ifelse문
#ifelse문은 if/else문을 합쳐둔 것이라고 보면 된다.
x=c(-5:5)
options(digits=3) #숫자 표현 시 유효자릿수를 3자리로 설정
sqrt(x)
sqrt(ifelse(x>=0, x, NA)) #NaN이 발생하지 않게 음수면 NA로 표시

students=read.csv("students.csv")
students

students[,2]=ifelse(students[,2]>=0&students[,2]<=100, students[,2],NA)
students[,3]=ifelse(students[,3]>=0&students[,3]<=100, students[,3],NA)
students[,4]=ifelse(students[,4]>=0&students[,4]<=100, students[,4],NA)
students

#2. 반복문
#반복문의 종류로는 repeat, while, for문이 있다
#repeat: 블록 안의 문장을 반복해서 수행한다
#while: 조건식이 참일 때 블록 안의 문장을 수행한다
#데이터의 각 요소를 변수에 할당하면서 각각에 대해 블록 안의 문장을 수행한다


#repeat 문을 이용해 1부터 10까지 수 증가시키기
i=1
repeat {
  if(i>10){
    break
  } else {
    print(i)
    i=i+1
  }
}

#while문을 이용해 1부터 10까지 수 증가시키기
i=1
while(i<=10) {
  print(i)
  i=i+1
}

#while문을 이용해 구구단 2단 만들기
i=1
while(i<10) {
  print(paste(2, "x", i, "=", 2*1))
  i=i+1
}

#for문을 이용해 1부터 10까지 수 증가시키기
for(i in 1:10) {
  print(i)
}

#for문을 이용해 구구단 2단 만들기
for(i in 1:9) {
  print(paste(2, "X", i, "=", 2*i))
}

#for문을 이용해 구구단 2~9단 만들기
for(i in 2:9) {
  for(j in 1:9) {
    print(paste(i, "X", j, "=", i*j))
  }
}

#1부터 10까지의 수 중 짝수만 출력하기
for(i in 1:10) {
  if(i%%2==0){
    print(i)
  }
}

#1부터 10까지 수 중 소수 출력하기
#효율적인 알고리즘은 아니다
for(i in 1:10) {
  check=0
  for(j in 1:i) {
    if(i%%j==0){
      check=check+1
    }
  }
  if(check==2) {
    print(i)
  }
}

#파일로 읽어들인 값을 for문을 통해 정제하기
students=read.csv(students.csv)
students

for(i in 2:4) {
  students[,i]=ifelse(students[,i]>=0&students[,i]<100, students[,i], NA)
}