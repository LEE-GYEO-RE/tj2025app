
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{  // 1. 상태가 있는 위젯 상속받기
  // (1) extends StatefulWidget 위젯으로부터 상속받는다.
  // (2) 상태를 관리할 하위 위젯들 등록한다.
  // * State<상위위젯> 하위 위젯들은 상속을 받은 상태여야한다.
  // 방법 : 등록할위젯명 createState() => 등록할위젯명();
  MyAppState createState() => MyAppState();


}

// 2. 상태를 사용하는 위젯 별도 선언
class MyAppState extends State<MyApp>{

  int count = 0;
  // +++++++++++++ 상태 변경 / 재렌더링 +++++++++++++
  void increment(){ setState(() {
    count++;
  }); print("클릭수 : ${count}"); }

  @override
  Widget build(BuildContext context) {
    return MaterialApp( home: Scaffold(
      appBar: AppBar(title: Text("상단 제목"),),
      body: Center(
        child: Column(
          children: [
            Text("count : ${count}"),
            TextButton(onPressed: increment, child: Text("버튼") ),
          ],
        ),
      ),
    ),
    );
  }
} // class e