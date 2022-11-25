import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        // leading: DropdownButton(
        //   value: _seletected,
        //   items: ['test', 'test1'],
        // ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.menu),
          Icon(Icons.add_alert_outlined)
        ],
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.topCenter,
        child: Container(
            color: Colors.lightBlue,
            padding: EdgeInsets.all(20),
            child: Container(
              color: Colors.yellow,
              height: 110,
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/dogi.jpg",
                        width: 150,
                        // alignment: Alignment.topCenter,
                      )
                    ],
                  ),
                  Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Container(
                      width: 200,
alignment: Alignment.centerLeft,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // TODO overflow 내려오게 하기
                          Text('data', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
                        ],
                      ),
                    ),
                    Container(
                      width: 200,
                      alignment: Alignment.centerLeft,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('data', style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    ),
                    Container(
                        width: 200,
                      alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('data'),
                          ],
                        )),
                    Container(
                      color: Colors.orange,
                      width: 200,
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children : [Column(children: [Icon(Icons.heart_broken), ],), Column(children: [Text('4')],)]),)
                  ])
                ],
              ),
            )),
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
      )),
    ));
  }
}
