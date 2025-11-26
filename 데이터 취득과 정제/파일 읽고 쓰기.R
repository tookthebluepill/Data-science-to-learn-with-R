#1. 파일 읽기
#파일을 읽을 때 read.table이나 read.csv 함수를 사용할 수 있다.
#read.table은 일반 텍스트 파일을, read_csv 함수는 CSV 파일을 읽을 때 사용한다.
#메모장을 이용해 students.txt 파일에 데이터 프레임을 생성 후 이를 읽는다
students=read.table("students.txt", header=T)
students
str(students)

#파일을 있는 형태 그대로 읽음
students=read.table("students.txt", header=T, as.is=T)
str(students)

#파일을 있을 때 문자열을 범주형으로 인식하지 않도록 설정
students=read.table("students.txt", header=T, stringsAsFactors=F)
str(students)

#구분 기호는 쉼표(,), 첫 행은 header로 인식하여 파일을 있는 그대로 읽어들이면
#NA로 인해 math 숫자가 문자열로 인식됨
students=read.table("students.txt", sep=",", header=T, as.is=T)
str(students)

#"NA" 문자열을 결측값 NA로 처리가 안 됨. 정확한 문자열은 NA 앞에 빈칸이 있어야 하기 때문
students=read.table("students.txt", sep=",", header=T, as.is=T, na.strings="NA")
str(students)

#"NA"로 정확하게 입력하자 결측값 NA로 처리되면서 숫자가 정상적으로 인식됨
students=read.table("students.txt", sep=",", header=T, as.is=T, na.strings="NA")
str(students)

#strip.white에서 빈칸을 제거하면 na.string의 기본값이 "NA"로 설정되어 숫자가 모두
#정상적으로 인식됨
students=read.table("students.txt", sep=",", header=T, as.is=T, na.strings="NA")
str(students)

#excel을 이용해 students.csv파일을 생성 후 불러온다
#첫 행이 header이므로 header 옵션을 지정할 필요가 없음
students=read.csv("students.csv")
students

str(students)
#name 속성을 범주형에서 문자형으로 변경
students$name=as.character(students$name)
str(students)

#파일을 읽을 때 문자열을 범주형으로 인식하지 않도록 설정
students=read.csv("students.csv", stringsAsFactors=FALSE)
str(students)


#2. 파일 쓰기
#write.table 함수나 write.csv 함수를 이용할 수 있다
students=read.table("students.txt", header=T, as.is=T)
#문자열에 큰따옴표가 표시됨
write.table(students, file="output.txt")
#문자열에 큰따옴표가 표지되지 않음
write.table(students, file="output.txt", quote=F)

write.csv(students, file="output.csv", quote=F)