```ruby
#반려견 등록번호로 데이터를 가져오는 코드
url = "http://animal.go.kr/portal_rnl/vicarious/record_confirmation.jsp?"
id = params[:puppyId]

@puppyinfor = Puppyinfor.find(id)

puppyId = @puppyinfor.puppyid
res = HTTParty.post(url, body: {search_dog_reg_no: puppyId})
doc =  Nokogiri::HTML(res.body)

name = doc.css('div.DetailViewArea table td')[2].text.encode('utf-8')
gender = doc.css('div.DetailViewArea table td')[3].text.encode('utf-8')
type = doc.css('div.DetailViewArea table td')[4].text.encode('utf-8')
op = doc.css('div.DetailViewArea table td')[5].text.encode('utf-8')
puppymemo = params[:info]
puppyimage = params[:puppyimage]

@puppyinfor.puppyname = name
@puppyinfor.puppygender = gender
@puppyinfor.puppytype = type
@puppyinfor.puppyop = op
@puppyinfor.puppymemo = puppymemo
@puppyinfor.puppyimage = puppyimage
@puppyinfor.save

redirect_to "/puppyinfors/#{id}"

  end
```

