import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    title: "Named Riutes demo",
    initialRoute: '/',

    routes: {
      '/':  (context) => FirstScreen(),
      '/second': (context) => SecondScreen(),
    },
  ));
}

// 첫번째 라우트
class FirstScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title: Text('First Route')
      ),
      body: Center(
        // RaisedButton을 자식으로 등록
        // RaisedButton: 평평한 레이아웃 위에 올라와있는 형태의 버튼
        // 반대로 평평한 모양을 가지는 FlatButton 도 존재함
        child: RaisedButton(
          child: Text('Open second route'),
          onPressed: (){  // 버튼이 눌렸을 때 처리
            // push 함수를 통해 라우트 스택에 새로운 라우트를 적재함
            Navigator.pushNamed(
                context,  '/second'
            );
          },
        ),
      ),
    );
  }
}

// 두번째 라우트
class SecondScreen extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        // RiasedButton을 등록
        child: RaisedButton(
          child: Text('Go back!'),
          onPressed: (){  // 버튼이 눌렸을 때 처리
            Navigator.pop(context); // 현재 라우트를 pop하여 제거함
          },
        ),
      ),
    );
  }
}