// example1.dart 파일 생성
// 1. void main(){} 이용한 최초 실행 코드 작성한다.
// 2. 위젯을 작성한다. 위젯 : 화면을 구성하는 가장 작은 단위( == 컴포넌트)

// [1] 위젯 만들기 :
// (1) StatelessWidget 상속받는다.
// (2) build 함수 재구현한다.
// (3) build 함수의 return에 'MaterialApp' 반환한다.
// (4) main() 안에서 최초로 실행할 위젯

import 'package:flutter/material.dart';

class MyApp1 extends StatelessWidget{
  // extends : 특정 클래스로 부터 물려받는 행위
  // 오버라이딩 @override , 빈 공간에 컨트롤+스페이스바 . build 함수
@override
  Widget build(BuildContext context) {
    return MaterialApp( home: Text("안녕하세요"));
  } // build e
} // class e

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // 자바 : new 클래스명( 값 ) vs DART : 클래스명( 속성명 : 값 )
    // return MaterialApp( home: Text("위젯 안에 써야함"),);
    // return MaterialApp(home: Scaffold( 속성명 : 값 , 속성명 : 값 ),);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("여기가 상단바"),),                      // 상단 바
        body: Center(child: Text("여기가 본문"),),                         // 본문
        bottomNavigationBar: BottomAppBar(child: Text("여기가 하단바"),),  // 하단 바
      ), // Scaffold e
    ); // MaterialApp e
  } // build e
} // class e

void main(){ // public static void main(){} 와 비슷한 main 스레드 갖는다.
  // 함수의 반환타입이 없다는 뜻
  // main 함수명 , 자바와 비슷하게 최초 실행은 void main에서 시작된다.

  print("dart 입니다."); // System.out.print() 와 비슷한 출력 함수
  runApp(MyApp2()); // 최초로 실행되는 위젯 실행 , 리액트에서 App.jsx 역할
} // main e
