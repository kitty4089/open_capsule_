강사님 c9 :   https://ide.c9.io/biniprc1/template_app2

수업내용 깃헙(by .강사님 ) :  https://github.com/lovings2u/template_app



전태훈 강사님의  template을 사용하는 이유  :  예쁘게 빨리 만드려고.

디자이너한테 돈 안주려고

디자이너가 이미 만들어서 올려놓은 template을 쓰기 위해서 



98%의 템플릿은 부트스트랩 사용

부트스트랩 버전   3버전인지 4버전인지

 gem  'bootstrap-sass'   3.대 버전

gem 'bootstrap', '~> 4.1.1'   4.1대 버전



app > assets > application.js

제일 끝에 두 줄 require turbolink

require_tree*  지우고

require bootstrap  만 

4버은

//= require popper 추가해야함





application.scss 파일에 한 줄 추가





`rails g controller home index`





vendor > stylesheets에 파일들을 갖다놨대...?

- application.scss
- home.scss





home.scss에 `@import ' ' ;`   로 쓸 파일들 추가



rake asset precompile??



assets.rb에

home.js

home.scss



css에 세미콜론이 찍혀 있어야해. 안그럼 프리컴파일 멈춤. 프리컴파일 완료 될 때까지 계속 프리컴파일 해 줫음. 오류 수정해 가면서.







3만 2천줄 되는.. 5개 파일 (5천 줄 씩 되는) 이 합쳐져서 css파일이 완성이 된것

asset pipeline? precompile?의 목적 :  하나로 만드는 거 





이미지들 파일명 뒤에 알 수 없는 문자들을 막 추가해서 고유한 이름 가지도록 처리.



