import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class Member {
  String name;
  int like;

  Member({this.name = '', this.like = 0});
}

class _MyAppState extends State<MyApp> {
  var memberList = [
    Member(name: '전병현'),
    Member(name: '병현전'),
    Member(name: '현전병'),
  ];

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
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, idx) {
          return ListTile(
            leading: Text(memberList[idx].like.toString()),
            title: Text(memberList[idx].name),
            trailing: TextButton(
              child: Text('좋아요'),
              onPressed: () {
                setState(() {
                  memberList[idx].like++;
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Bottom(),
    ));
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
    return SizedBox(child: Text('test'));
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
        children: [
          Icon(Icons.phone),
          Icon(Icons.message),
          Icon(Icons.download)
        ],
      ),
    ));
  }
}
