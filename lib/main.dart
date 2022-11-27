import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:Text('안녕')
      // home:Icon(Icons.star)
      // home:Image.asset('assets/dogi.jpg')
      // home: Center(
      //   child: Container( width: 50, height: 10, color: Colors.greenAccent),
      // )
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            Row(children: [Icon(Icons.person), Text('홍길동')]),
            Row(children: [Icon(Icons.person), Text('홍길동')]),
            Row(children: [Icon(Icons.person), Text('홍길동')]),
            Row(children: [Icon(Icons.person), Text('홍길동')]),
            Row(children: [Icon(Icons.person), Text('홍길동')]),
            Row(children: [Icon(Icons.person), Text('홍길동')]),
            Row(children: [Icon(Icons.person), Text('홍길동')]),
          ],
        ),
        bottomNavigationBar: Bottom(),
      )
    );
  }
}
const a = SizedBox(
  child: Text('안녕'),
);


// stless + Tab 자동완성
class Test extends StatelessWidget {
  const Test({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text('test')
    );
  }
}

class Bottom extends StatelessWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [Icon(Icons.phone), Icon(Icons.message), Icon(Icons.download)],
          ),
        )
      );
  }
}







