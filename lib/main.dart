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
        actions: [
          Icon(Icons.search),
          Icon(Icons.menu),
          Icon(Icons.add_alert_outlined)
        ],
      ),
      body: Container(
          height: 150,
          color: Colors.red,
          child: Row(children: [
            SizedBox(
              width: 150,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/dogi.jpg",
                    width: 150,
                  )
                ],
              ),
            ),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // TODO overflow 내려오게 하기
                    Text(
                      'data',
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                    ),
                    Text('data', style: TextStyle(color: Colors.grey)),
                    Text('data'),
                    Row(
                      children: [
                        Column(
                          children: [
                            Icon(Icons.heart_broken),
                          ],
                        ),
                        Column(
                          children: [Text('4')],
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.end,
                    )
                  ]),
            )
          ])),
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
