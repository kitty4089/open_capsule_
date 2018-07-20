```ruby
require 'httparty'
require 'nokogiri'   #아주 핵심적인 두 친구. 친해지세요

# 1. naver에 원하는 정보가 담긴 페이지를 요청한다
# 2. 네이버에게 받은 문서 안에 있는 원하는 특정 정보를 빼온다.
# 3. 빼온 정보를 출력한다.

# res = HTTParty.get("http://finance.naver.com/sise/")   #원하는 정보를 가져오는 건 httparty
#     #httparty 크롬같은 브라우저들이 하는 역할을 대신해준다. 
#     # => url 웹페이지 소스코드 문서를 대신해서 요청해주는 루비 코드
#     # 가져온 코드들은 해당 웹페이지 -> 우클릭 -> 소스보기 하면 나오는 코드들과 완전히 동일.
# # puts res

# val = Nokogiri::HTML(res).css("#KOSPI_now")        #:: 는 다음주 정도에 설명할게요
#     #노코기리한테 검색을 대신 맡긴 거. html문서 안에서 검색해줘~
# # css언어 : 웹을 꾸미는데 필요한 언어
# # css selecter =>  웹페이지에서 원하는 정보 위에 마우스 커서 올려놓고 우클릭 -> 검사(단축키 ctrl + shift + i)
#   -> 옆에 창이 분할되며 해당 부분의 소스코드가 나온다
# ##KOSPI_now같은 아이디 복사 : 
#  #나온 소스 코드 창에서 자기 원하는 정보 위 커서 놓고 우클릭 -> copy -> copy selecter

#  puts val       #해당부분 해당 라인 코드가 나옴
#  puts val.text   #딱 그 문자 값만 들고 올래
#  puts "현재 KOSPI 지수는" + val.text

content > div:nth-child(2) > div > div > div.list_item.list_item_biztime > div > a > div:nth-child(1) > div:nth-child(1) > span > span

#다음 비트코인으로 연습2
#  res = HTTParty.get("https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8")
#  val = Nokogiri::HTML(res).css("#speCurrencyColl > div.coll_cont > div > div.wrap_quote > div.graph_quote > div.graph_rate.stock_up > em.currency_value") 
#  puts "비트코인 가격은" + val.text
# 엥 이거 안됨 ㅎㅎ 다음에서 막아놓은 것. 네이버도 대부분은 검색 막아놨는데 저 증시 페이지는 안 막혀 있어서 했었던 것
 #다음은 기계(지금 우리는 루비)가 웹페이지를 요청하면 다른 주소로 돌려버림. 우회하는 코드 넣은 것
 # => 기본적인 보안
# 막혀있는 지 아닌지 아는법은 주소창에 주소 http://등 앞부분이 초록색으로 돼있으면 보안돼 있는것.
# 나중에 막혀있어도 우회하는 방법 알려줄거에요. scrapping하는 법. => 매크로. 공연사이트 예매, 수강신청,

headers = {
  'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'
} 
res = HTTParty.get("https://search.daum.net/search?w=tot&DA=YZR&t__nil_searchbox=btn&sug=&sugo=&q=%EB%B9%84%ED%8A%B8%EC%BD%94%EC%9D%B8", headers: headers)
val = Nokogiri::HTML(res).css("#speCurrencyColl > div.coll_cont > div > div.wrap_quote > div.graph_quote > div.graph_rate.stock_up > em.currency_value")
puts "비트코인 가격은" + val.text
```

