
import 'package:flutter/material.dart';

// [2] 최초로 실행할 위젯 , main 함수 안에서 runApp 함수 이용한 위젯 실행
// 상단바에서 실행할 환경 선택 (web , chrome)
void main(){
  runApp(MyApp());
}

// [1] 상태가 없는 위젯 = 재 렌더링 없을 때 사용
class MyApp extends StatelessWidget{ // [1-1] StatelessWidget 상속받는다. : 상태관리 안해줌 , 변수 바뀌어도 재렌더링 안됨

  // [1-3] 이벤트
  int count = 0; // 변수
  void increment( ){ count++; print(count); } // 함수


  // [1-2] build 함수 재구현
  @override
  Widget build(BuildContext context) {
    // return MaterialApp( home: Text("안녕하세요"),); // [1-3] 위젯에 반환할 위젯
    return MaterialApp( home: Scaffold(
      appBar: AppBar( title: Text("상단제목"),) , // 상단 바
      body: Center(
        child: Column(
          children: [
            Text("세로 정렬 첫번째 위젯"),
            Text("세로 정렬 두번째 위젯"),
            TextButton(onPressed: increment , child: Text("세로 정렬 세번째 위젯"),), // onPressed : 변수 함수
            Text("세로 정렬 네번째 위젯 COUNT : ${count}")
          ],) ), // 
    ), // Scaffold e
    ); // Material e
  } // build e


} // class e