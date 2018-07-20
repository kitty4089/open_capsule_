```ruby
require 'csv'
require 'httparty'
require 'nokogiri'


for num in 31509806..31509808 do
    addr_gangnam = 0
    headers = {'User-Agent': 'Mozilla/5.0 (Windows; U; MSIE 9.0; WIndows NT 9.0; ko-KR))'}
    res = HTTParty.get("https://store.naver.com/restaurants/detail?id=" + num.to_s, headers: headers)

    #-------------contents-----------------------------
    name = Nokogiri::HTML(res).css("#content > div:nth-child(1) > div.biz_name_area > strong").text
    tel = Nokogiri::HTML(res).css("#content > div:nth-child(2) > div.bizinfo_area > div > div.list_item.list_item_biztel > div").text
    addr = Nokogiri::HTML(res).css("#content > div:nth-child(2) > div.bizinfo_area > div > div.list_item.list_item_address > div > ul > li:nth-child(1) > span").text
    time = Nokogiri::HTML(res).css("#content > div:nth-child(2) > div > div > div.list_item.list_item_biztime > div > div > div > div > span.time > span").text
    #--------------------------------------------------
    
    time_split = time.split(" ")
    puts time_split.last

    t = time_split.last.to_s
    time_split2 = t.split(":")
    puts time_split2
    


    addr_split = addr.split(" ")
    # puts addr_split
    addr_split.each do |a|
        if a == "강남구"
            addr_gangnam = 1
            # puts "나만 강남구다!"
        end

    end
    

    
    CSV.open("store_test1.csv", "ab") do |s|
        if name != "" && addr_gangnam == 1 && !time_split2.empty?
            if time_split.last == "00:00"       # 24시간 여부 (1 : 24시간 / 0 : 자정 이후 문닫는곳 / -1 : 자정 이전 문닫는곳 )
                s << [name,tel,addr,time,1]
            elsif 13 <= time_split2.first.to_i &&  time_split2.first.to_i <= 24
                s << [name,tel,addr,time,-1]
            else
                s << [name,tel,addr,time,0]
            end
            # puts " 가게명 : #{name}"
        end
    end
end


# image_url  ==> 자바스크립트 때문에 힘듦 ㅠㅠ
# name v
# tel v
# time 하는 중
# addr v
# price

#########################################################################
    # 1) image 사진  :   url   -  string
	# 2) name상호명 - string
	# 3) tel 전화번호 - string
	# 4) time 영업시간 string
	# 5) addr 주소  string 
	# 6) price 1인 평균가격   string
	# 7) like 좋아요 개수   /  or 평점 (이미지 url)  - 동주쌤 아니면 아마도 가라로 한다
	# 8) allday 24시간 / 자정 이전 / 자정 이후   ( 0, 1, 2)   integer
	# 	    - 24시간 ;  상호명에 24시간이 있는 것들 +  영업시간 기준 (ex.매일 00:00 - 24:00연중무휴)
    # - 카테고리 한자리~세자리 숫자
    # 9)  first_cate     integer
    # 10)  second_cate  integer
    # 11)  third_cate  integer

    # 12) location_id  integer
#########################################################################
```

