### 0226(수)

#### 어플리케이션 아키텍처

- HTTP response
  - HTML, CSS, JavaScript, react, angular 등
- Web Server
  - Apache, **Tomcat**, nodJS, Jango,IIS 등

![image-20200226103304418](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20200226103304418.png)

- Database
  - Oracle, SQL Database

#### 브라우저

- **렌더링 엔진**
  요청된 컨텐츠를 화면에 표시하기 위해 필수적. 요청된 페이지가 HTML이라 할 때, 렌더링 엔진은 HTML과 CSS를 파싱하고 화면에 파싱된 컨텐츠를 표현하는 역할을 함.

- DOM: 브라우저 렌더링에 의해 트리형태로 구성된 파싱문서

![자바 스크립트 Tree](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20200226104545552.png)

- ​	자바스크립트(DOM 트리 접근자 표)

#### 웹 프로토콜 구조

get요청- 본문이 비어있음

host요청- 본문에 뭔가 들어가 있음.

![image-20200226105431854](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20200226105431854.png)

- HTTP Response

  - 리스폰스 성공시: 200
  - 응답 코드 정리
  - ![image-20200226105628146](C:\Users\user\AppData\Roaming\Typora\typora-user-images\image-20200226105628146.png)

  - Get이면 파라미터 정보가 헤더에 실리고(바디는 따로)
  - Post면 파라미터 정보가 바디에 실림

  ---

  Tomcat admin port: 8088

  HTTP/1.1: 8080

  ---

  ### HTML

  태그선택자

  *: all 선택자

  #: id 선택자

  .: class 선택자

  []: 속성 선택자

  , : 복수 선택

  `>`: 자식 선택자

  공백: 후손선택자

  +: 형제 선택(바로 우측)

  ~ : 형제 선택(우측 모든 형제)

  - :: active functions
    - ::active: 클릭했을 때
    - ::hover: 마우스 올렸을 때
    - :nth-child: 자식의 n번째 요소 선택
      - first-child, last-child 등 다양함.
      - odd: 홀수, even: 짝수 선택
      - not: 특정요소만 제외하고

### form
- name, id 둘 다 element를 식별(접근)하는 용도로 사용
    - id는 유일한 값, 문서 안에서 오직 하나만 존재해야 함: getElementByID()
    - name은 중복 가능함.: getElementsByName(), document.form["name"]
- form을 활용해 입력받고, action을 통해 다음 페이지로 이동 
- a태그를 활용해 link를 걸수도 있지만 그냥 form을 씀.

#### Bootstrap

span의 합이 12여야 함.

BS table을 많이 사용할 것임. DB랑 연동해서.

---

### JSP(0302월)

데이터타입-연산자-제어문-반복문-함수-클래스-문자열,배열-DOM-내장객체-ajax

---

#### MVC패턴

* MVC: Model-View-Controller
  * 개발할 때 3가지 형태로 역할을 나누어 개발하는 방법론 

- Model: 어플리케이션이 **무엇**을 할 것인지 정의. 내부 비즈니스 로직 처리하는 역할
  - 알고리즘, DB, 데이터 등
- Controller(java): 모델을 **어떻게** 처리할 지 알려주는 역할, 모바일에서는 화면의 로직처리 부분.
  - Model과 View가 각각 무엇을 해야 할지 알고 있고, 통제함. 

- View: 화면에 무엇인가를 **보여주기 위한 역할** 컨트롤러 하위에 종속. 모델이나 컨트롤러가 보여주려고 하는 모든 필요한 것들을 보여줌. 
사용자의 입력을 받아서 모델의 데이터를 업데이트











---
[toc]	

---

- [0226(수)](#0226%ec%88%98)
  - [어플리케이션 아키텍처](#%ec%96%b4%ed%94%8c%eb%a6%ac%ec%bc%80%ec%9d%b4%ec%85%98-%ec%95%84%ed%82%a4%ed%85%8d%ec%b2%98)
  - [브라우저](#%eb%b8%8c%eb%9d%bc%ec%9a%b0%ec%a0%80)
  - [웹 프로토콜 구조](#%ec%9b%b9-%ed%94%84%eb%a1%9c%ed%86%a0%ec%bd%9c-%ea%b5%ac%ec%a1%b0)
- [HTML](#html)
  - [Bootstrap](#bootstrap)
- [JSP(0302월)](#jsp0302%ec%9b%94)
  - [Controller(java)](#controllerjava)






