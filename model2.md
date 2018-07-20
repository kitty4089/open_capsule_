## model



### model1 :  User

### model2 :   Store 

​	1) image 사진  :   url   -  string

​	2) name상호명 - string

​	3) tel 전화번호 - string

​	4) time 영업시간 string

​	5) addr 주소  string 



​	6) price 1인 평균가격   string

​	7) like 좋아요 개수   /  or 평점 (이미지 url)  - 동주쌤 아니면 아마도 가라로 한다

​	8) allday 24시간 / 자정 이전 / 자정 이후   ( 0, 1, 2)   **integer**

​		- 24시간 ;  상호명에 24시간이 있는 것들 +  영업시간 기준 (ex.매일 00:00 - 24:00연중무휴)

 - 카테고리 한자리~세자리 숫자

   9)  first_cate     **integer**

   10)  second_cate  **integer**

   11)  third_cate  **integer**

   12) location_id  **integer**

   

### model 3 :  Location  (이제 만들어야함)

강남 >>>

id  name   time

1   all

2  강남역

3  가로수길

.

.

.

- all    **강남 전체**

- gangnam_st 강남역
- garosugil  가로수길
- sinsa_apgu  신사/압구정
- chungdam  청담동
- mulcam  역삼/선릉
- samsung   삼성동
- nonhyun  논현동





----

### First_category 상위 카테고리 - icon으로     

​	1) entertain  놀기

​	2) non_alcohol  먹기

​	3) alcohol  마시기

​	4) **convenient  생활/편의**

### Second_category 하위 카테고리 - 각각 대표 사진 ( 무드 맞춰가지고 )    

###### 	1) entertain 놀기

​		1.1) pc_room 	pc방

​		1.2) iamsinger   노래방

​		13) 오락실/당구장/볼링장

​		14) comic_cafe   만화카페 / 방탈출

​		15) theater   영화관

​		16) club   클럽/나이트

###### 	2) non_alcohol 먹기

​		2.1) cafe

​		2.2) fastfood

​		23) restaurant

​		24) nightmarket

###### 	3) alcohol 마시기

​		31) standard  		일반 주점/호프

​		32) smallbeer		스몰비어

​		33) bar  		바/라운지바

​		34) izakaya

###### 	4) **convenient  생활/편의**

​		41) **medic  의료**

​		42) **life  생활/금융**

​		43) **mart  마트/편의점**

​		44) **sports  헬스/스포츠**

​		45) **outdoor 공공시설**













-----------------------------------------------------------------------------------------------------------------------

### Third_category   생활 / 편의의 하위 카테고리

​		4.1) **medic  의료**

​			4.1.1) emergency 응급실 / drug  약국

​			412) pets  동물병원

​		42) **life  생활/금융**

​			421) laundry  세탁

​			422) carwash  세차

​			423) spa  찜질방

​			424) yanolza  숙박

​			425) atm

​		43) **mart  마트/편의점**

​			431) mart  마트

​			432) cvs  편의점

​		44) **sports  헬스/스포츠**

​			441) fitness  피트니스 센터(헬스장)

​			442) swim  수영장

​		45) **outdoor 공공시설**

​			451) park   공원

​			452) openbath   야외족욕/노천탕

​			453) nightview   야경명소