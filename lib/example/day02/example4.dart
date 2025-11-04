import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
} // main e

// [1] 플러터 앱의 시작점 위젯
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: IOwidget() );
  } // build e
} // class e


// [2] 상태가 있는 위젯
class IOwidget extends StatefulWidget{
  // 현재 위젯을 상속받은 하위 위젯들을 등록
  IOwidgetState createState() => IOwidgetState();
} // class e

// [3] 상태 하위 위젯
class IOwidgetState extends State<IOwidget>{

  // -TextField 로 부터 입력받은 값들을 제어하는 제어 변수 , 입력상자 1개당 1개
  // TextEditingController : 입력받은 상태를 가지고 있는 변수 == React의 useState 느낌
  TextEditingController nameCont = TextEditingController();
  TextEditingController ageCont = TextEditingController();

  void post(){
    // 여기서 서버와 통신 axios , fetch 하면 됨
    print(nameCont.text ); // 컨트롤러명.text : 현재 컨트롤러와 연결된 입력받은 값 반환
    print(ageCont.text);
  } // void e

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("입출력 실습"),),
      body: Column(
        children: [
          TextField( controller: nameCont ,
            decoration: InputDecoration(labelText: "이름 입력"),),
          TextField( controller: ageCont ,
            decoration: InputDecoration(labelText: "나이 입력"),),
          TextButton(onPressed: post , child: Text("등록"))
        ],
      )
    );
  } // build e
} // class e