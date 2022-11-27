import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home:MyApp()
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          print('constext $context');
          print(context.findAncestorWidgetOfExactType<MaterialApp>());
          showDialog(
              context: context,
              builder: (context){
            return CustomDialog();
          });
        }),
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
      );

  }
}

class CustomDialog extends StatelessWidget {
  const CustomDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text('팝업메세지'),
        content: TextField(),
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('확인')),
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('취소'))
        ]
    );
  }
}



