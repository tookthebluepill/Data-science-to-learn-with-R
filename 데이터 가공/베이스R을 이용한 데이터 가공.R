#데이터 가공
#데이터 가공은 데이터에서 불필요한 요소를 제거하고 사용하기 편하게 정리한다는 관점에서
#볼 때 데이터 정제와 비슷하다고 볼 수 있으나 다르다
#데이터 가공은 훨씬 광범위하고 구체적인 목적 아래 이루어진다는 점에서 정제와 구별된다.
#데이터에 담긴 의미를 끄집어내기 위한 통계 분석, 효과적인 관찰을 위한 시각화, 인과관계를
#추정하기 위한 모델링 등 데이터 분석의 거의 모든 분야에서 적절한 가공이 필요하다


#베이스 R을 이용한 데이터 가공
#gapminder 라이브러리
#세계 각국의 기대 수명, 1인당 국내총생산, 인구 데이터 등을 집계해놓은
#데이터 중 일부를 담고 있다.
library(gapminder)
library(dplyr)
glimpse(gapminder)

#샘플과 속성의 추출
gapminder[, c("country", "lifeExp")]
gapminder[, c("country", "lifeExp", "year")]
gapminder[1:15, ] #행 번호만으로 지정한 명령어는 의미 파악이 어렵고, 정렬 순서가 바뀌면
                  #의도치 않은 샘플이 추출될 수 있다

gapminder[gapminder$country == "Croatia", ]
gapminder[gapminder$country == "Croatia", "pop"]
gapminder[gapminder$country == "Croatia", c("lifeExp","pop")]
gapminder[gapminder$country == "Croatia"&gapminder$year>1990, c("lifeExp","pop")]

#행/열 단위의 연산
#데이터 탐색 과정에서 샘플들의 요약 통계 혹은 행/열 단위 빠른 연산이 필요할 때
#apply 함수 이용
apply(gapminder[gapminder$country == "Croatia", c("lifeExp","pop")], 2, mean)