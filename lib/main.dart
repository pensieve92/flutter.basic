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
        appBar: AppBar(
          title: Text('Daily'),
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: double.infinity, height: 150,
            // margin: EdgeInsets.all(20),
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red)
            ),
            padding: EdgeInsets.all(20),

            child: Text('day'),
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.message),
                Icon(Icons.contact_page)
              ],
            ),
          )

        ),
      )
    );
  }
}




