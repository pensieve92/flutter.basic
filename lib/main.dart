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
  var confirm = 1;


  addSatate(){
    setState(() {
      print(confirm);
      confirm++;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: (){
          print('constext $context');
          print(context.findAncestorWidgetOfExactType<MaterialApp>());
          showDialog(
              context: context,
              builder: (context){
            return
              CustomDialog(state: confirm, addAction: addSatate);
          });
        }),
        appBar: AppBar(
          title: Text('Daily$confirm'),
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


class CustomDialog extends StatefulWidget {
  const CustomDialog({Key? key, this.state = 0, this.addAction}) : super(key: key);
  final state;
  final addAction;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  var count = 0;

  @override
  void initState() {
    count = widget.state;
  }

  @override
  Widget build(BuildContext context) {

    add(){
      widget.addAction();
      setState(() {
        print(count);
        count++;
      });
    }

    return AlertDialog(
        title: Text('팝업메세지'),
        content: TextField(),
        actions: [
          TextButton(onPressed: (){
            add();
            // Navigator.of(context).pop();
          }, child:
          Text(
              count.toString())
          ),

          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text('취소'))
        ]
    );
  }
}



