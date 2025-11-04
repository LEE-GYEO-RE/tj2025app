// 플러터/프론트앤드 : 입출력담당 ( 데이터 가공 == 웬만하면 자바/서버 )

// main 함수 밖에
// [5-1] 클래스 : class 클래스명{}
class Person{
  // 멤버 변수
  String name;
  int age;

  // 생성자
  Person(this.name , this.age);
}

// Dart 기본 문법
void main(){ // main 스레드 갖는 함수

  // [1] 기본타입
  int age = 25; // 정수 int
  print("나이 : ${age}"); // "문자열 ${ 변수명 }" // 출력 템플렛
  double height = 175.5;  // 실수 double
  bool isStudent = false; // 논리 bool
  String name = "유재석";  // 문자열 String
  print("이름 : ${name} , 키 : ${ height} , 학생 여부 : ${isStudent}");


  // [2] 주요 변수/상수 키워드
  var city = "서울";    // JS처럼 자동 타입 추론 - 타입변경불가능
  dynamic count = 120; // *자동 타입 - 타입변경가능*
  count = "120명"; // 중간에 타입변경 가능

  const PI = 3.14159;       // JS처럼 const 상수 = 런타임 중에 처리(실행 도중)
  final country = "대한민국"; // JAVA 처럼 final 상수 = 컴파일 시 처리(실행 전)
  print("도시 : ${city} , 인구 : ${count} , 나라 : ${country} , PI : ${PI}");

  // [3] List , Map , Set : 컬렉션
  List<String> fruits = [ "사과" , "바나나" , "포도" ];
  fruits.add("딸기");
  print("과일목록 : ${fruits}");

  Map<String , int> scores = { "국어" : 80 , "영어" : 85 , "수학" : 90 }; // 속성명 : 값 형식의 집합
  print("점수 목록 : ${scores}");

  Set<int> numbers = { 1,2,3,4,5,6,3,1,2,3,4,6 }; // set 중복 값이 없는 집합
  print("중복없는 집합 : ${numbers}");

  // [4] 함수
  int add( int a , int b ){return a+b;}
    // int : 반환타입 , add : 함수명 , int a , b : 매개변수
  int result = add(3,5); print("결과 : ${result}");

  // 익명 함수 / 화살표 함수 ---> dynamic 함수명 = (){}
  var multiply = ( int x , int y){return x * y; };
  int result1 = multiply(3 , 5); print("익명함수 : ${result1}");

  // [5] 객체
  Person p1 = Person("유재석", 45);
  Person p2 = Person("강호동", 40);
  // 위젯 : 미리 만들어진 클래스 또는 내가 만든 클래스  == 리액트 컴포넌트 느낌
  // new 생략하고 위젯명( 속성값 , 속성값 ); == 위젯명( 위젯명( 위젯명() ) ); 위젯 중첩

  // [6] null 갖는 타입 , 타입명 뒤에 ?
  String? nickname; // ? 갖고 있으면 null값 허용
  nickname = null;
  print("닉네임 : ${nickname ?? "미정"}");

  // [7] if, for 제어문은 자바와 동일


} // main e