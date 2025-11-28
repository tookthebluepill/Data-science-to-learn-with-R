#dplyr 라이브러리를 이용한 데이터 가공
#R에서 데이터 가공은 데이터 프레임을 중심으로 이루어진다.
#베이스R으 ㅣ데이터 가공 기법은 인덱스 기반의 데이터 접근에 기초한다
#dplyr 라이브러리는 filter 혹은 select같은 함수를 이용해 데이터 가공을 구현한다

#샘플과 속성 추출
#dplyr 라이브러리를 이용해 특정 속성(열)을 추출할 때는 select 함수를 이용한다
select(gapminder, country, year, lifeExp)
#특정 샘플(행)을 추출할 때는 다음 같이 filter 함수를 사용한다
filter(gapminder, country=="Croatia")

#행/열 단위의 연산
#group_by 함수를 이용하면 데이터 프레임에 포함된 범주형 속성을 활용해
#전체 데이터를 그룹으로 분류할 수 있다.
summerize(gapminder, pop_avg=mean(pop))
summerize(group_by(gapminder, continent), pop_avg=mean(pop))
summerize(group_by(gapminder, continent, country), pop_avg=mean(pop))

#%>% 연산자를 이용한 연속 처리
#dplyr 라이브러리는 데이터 가공에 특화된 만큼 반복적인 가공 작업의 수고를
#덜기 위해 %>% 연산자를 제공한다.

gapminder %>% group_by(continent, country) %>% summarize(pop_avg=mean(pop))

#%>%연산자는 앞의 명령어를 처리한 결과를 다음 명령어로 전달하는 역할으 한다.
#뒤의 명령어가 함수인 경우 %>%에 의해 전달된 결과는 이 함수의 첫 번째 인자로 사용된다.

#한 명령어로 처리한 결과를 다시 다른 명령어로 처리하려면 다음같이 해야 한다,
temp1=filter(gapminder, country=="Croatia")
temp2=select(temp1, country, year, lifeExp)
temp3=apply(temp2[ , c("lifeExp")], 2, mean)
temp3


#%>%를 쓰면 간단하다
gapminder %>% filter(country=="Croatia") %>%select(country, year, lifeExp)%>% summarize(lifeExp_avg = mean(lifeExp))