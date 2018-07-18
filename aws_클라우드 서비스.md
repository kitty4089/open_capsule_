#### c9 :   exhibition    유효성검사 data validation 업그레이드//

form입력할 때, 3글자 이상 써야지만 등록해준다거나, 한 요소 없으면 입력 안된다거나 하는

![1531900790871](C:\Users\student\AppData\Local\Temp\1531900790871.png)

유효성 검사 !!!





---

# aws

**클라우드 서비스** 

인터넷을 전기처럼 쓰게 됐다..자급자족 형태 전기공급 -> 아마존. 클라우드 서비스 시작. 점유율 거의 압도적 1위. 



2위 마소  애져? / 3위 구글 클라우드 플랫폼   

라고는 하지만..아마존에 발끝도 안됨.. 나머지 다 합쳐도 안됨. 





---

#### 컴퓨터는 2가지를 잘 하는 아이임. 

:   저장/계산



------

### aws에 가입

콘솔에 로그인 

![1531894035011](C:\Users\student\AppData\Local\Temp\1531894035011.png)



aws는 씨애틀에 있는 회사.

국제 결제가 되는 카드면 다.



![1531894082516](C:\Users\student\AppData\Local\Temp\1531894082516.png)



![1531894241302](C:\Users\student\AppData\Local\Temp\1531894241302.png)

1년간 프리티어로 거의 다 무료로 쓸 수 있음.



![1531894619183](C:\Users\student\AppData\Local\Temp\1531894619183.png)



- 내 아이디는 특2한 + 마지막 한 개 숫자까지!  >_< 



![1531894719666](C:\Users\student\AppData\Local\Temp\1531894719666.png)

로그인된 화면!



![1531895173297](C:\Users\student\AppData\Local\Temp\1531895173297.png)

제공되는 200여 가지 서비스들!

컴퓨팅 : 계산

스토리지 :  저장





c9도 aws에 인수되어서 하나의 서비스가 되었다 ㅎㅎ





![1531895232396](C:\Users\student\AppData\Local\Temp\1531895232396.png)

S3   :    구글드라이브 드랍박스같은 거. 프로그래밍적으로 더 편하고. 엄청 싸고 (다른 스토리지 서비스보다 압도적으로)  큰 파일같은 거 여기 올려서 관리하고. 코드 올리기 쉽고.



버킷을 새로 만들어야 한다. 드랍박스 안에 특정 폴더를 만드는 거 같은 것

데이터를 담을 바구니를 만드는 것.



![1531895320659](C:\Users\student\AppData\Local\Temp\1531895320659.png)

둘 중에 하나 눌러요



![1531895378667](C:\Users\student\AppData\Local\Temp\1531895378667.png)

![1531895396707](C:\Users\student\AppData\Local\Temp\1531895396707.png)

![1531895411325](C:\Users\student\AppData\Local\Temp\1531895411325.png)

![1531895430469](C:\Users\student\AppData\Local\Temp\1531895430469.png)



![1531895478201](C:\Users\student\AppData\Local\Temp\1531895478201.png)

이제 여기다 파일 올리고 싶은 거 올리면 된다.

aws s3 가격이 어느 정도 되냐면

프리티어를 사용하는 고객은 5G정도를 무료로 시작할 수 있습니당 ㅎㅎ



![1531895500331](C:\Users\student\AppData\Local\Temp\1531895500331.png)

![1531895518808](C:\Users\student\AppData\Local\Temp\1531895533665.png)

둘 중에 하나 눌러요



![1531895610861](C:\Users\student\AppData\Local\Temp\1531895610861.png)

업로드 하나 해 보았다

![1531895629065](C:\Users\student\AppData\Local\Temp\1531895629065.png)

나만 보게 설정되어 있기 때문에



![1531895639228](C:\Users\student\AppData\Local\Temp\1531895639228.png)

링크 클릭하면 에러뜸



다시 돌아가서

![1531895656592](C:\Users\student\AppData\Local\Temp\1531895656592.png)

클릭

![1531895670852](C:\Users\student\AppData\Local\Temp\1531895670852.png)

링크 바뀌었을것. 다시 클릭해보자



![1531895687361](C:\Users\student\AppData\Local\Temp\1531895687361.png)

이제는 나온당 >_<



![1531895717903](C:\Users\student\AppData\Local\Temp\1531895717903.png)

폴더도 만들 수 있당



![1531895741853](C:\Users\student\AppData\Local\Temp\1531895741853.png)

삭제는 우클릭!





---

### rails를 통해 루비코드로 프로그래밍적으로 올려보기

캐리어웨이브 안에 있는 fog 라는  gem을 이용해서!



https://github.com/fog/fog-aws

fog aws  구글링 ㄱㄱ

![1531895932822](C:\Users\student\AppData\Local\Temp\1531895932822.png)



![1531896065665](C:\Users\student\AppData\Local\Temp\1531896065665.png)

캐리어웨이브 있는 거 확인



![1531896115071](C:\Users\student\AppData\Local\Temp\1531896115071.png)

`bundle`



![1531896136696](C:\Users\student\AppData\Local\Temp\1531896136696.png)

storage file 아니고 다른 거로 해주는 게 관례?



![1531896163476](C:\Users\student\AppData\Local\Temp\1531896163476.png)

fog로 바꿔준다



새 rb파일을 만들어 주고

![1531896333897](C:\Users\student\AppData\Local\Temp\1531896333897.png)

https://github.com/carrierwaveuploader/carrierwave

여기 들어가서

fog검색해서

![1531896583134](C:\Users\student\AppData\Local\Temp\1531896583134.png)

복붙!!

![1531896619572](C:\Users\student\AppData\Local\Temp\1531896619572.png)





그리고 이제 키를 입력할고야

![1531896349597](C:\Users\student\AppData\Local\Temp\1531896349597.png)

credential

![1531896391361](C:\Users\student\AppData\Local\Temp\1531896391361.png)

![1531896407506](C:\Users\student\AppData\Local\Temp\1531896407506.png)

아이디/비밀번호 입력해서 로그인으로 접근 아니고 바로 프로그래밍으로 키로 들어가는 법



![1531896450955](C:\Users\student\AppData\Local\Temp\1531896450955.png)

![1531896458913](C:\Users\student\AppData\Local\Temp\1531896458913.png)

이것은 생명같이 보호해야 한다!!!!!!!  내 아이디 권한. 신용카드 권한을 넘겨주는 거나 마찬가지..

내 계정으로 막 슈퍼 컴 생성해서 말도 안되는 마이닝. 생산성..?  암튼 넘겨주면 과금이 막 됨...



- git hub은 광역검색이 된다.. 막 aws_credentials 같은 검색어 입력하면.. 검색 됐었음..지금은 막혀있긴 한데 또 뭐가 뚫려있을 지 모름..



![1531896794737](C:\Users\student\AppData\Local\Temp\1531896794737.png)

여기 id랑 보안액세스 키를  입력해 준다



![1531896878244](C:\Users\student\AppData\Local\Temp\1531896878244.png)

버킷을 서울로 만들었으니 region을 이렇게 입력!



![1531896959418](C:\Users\student\AppData\Local\Temp\1531896959418.png)

이 버킷이름을

![1531897000099](C:\Users\student\AppData\Local\Temp\1531897000099.png)

여기에 써 준다



![1531897053390](C:\Users\student\AppData\Local\Temp\1531897053390.png)

region 위 아래 3줄 주석처리 하고



서버 껐다 켜준다!!!

![1531897165075](C:\Users\student\AppData\Local\Temp\1531897165075.png)



로그인 해야 하니 까먹었다면 아래와 같이

![1531897135308](C:\Users\student\AppData\Local\Temp\1531897135308.png)



![1531897206269](C:\Users\student\AppData\Local\Temp\1531897206269.png)



![1531897283600](C:\Users\student\AppData\Local\Temp\1531897283600.png)

하나 업로드 해본다

![1531897346364](C:\Users\student\AppData\Local\Temp\1531897346364.png)

들어가 보면 

![1531897537888](C:\Users\student\AppData\Local\Temp\1531897537888.png)

여기 올라가 있당!









---

![1531897436630](C:\Users\student\AppData\Local\Temp\1531897436630.png)

키는 위험하니까 비활성화를 누르자

![1531897468926](C:\Users\student\AppData\Local\Temp\1531897468926.png)

이 상태로 ㅎㅎ 아님 아예 삭제하든가







---

### ses  :  simple email service

ses aws

ses붙이는 건 내일 해볼게요....