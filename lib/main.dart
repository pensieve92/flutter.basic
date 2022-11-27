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
  var memberList = ['hi'];

  addSatate(){
    setState(() {
      print(confirm);
      confirm++;
    });
  }

  addMember(name){
  setState(() {
    print(name);
    memberList.add(name);
    print(memberList);
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
              CustomDialog(
                  state: confirm,
                  addAction: addSatate,
                  addMemberAction: addMember
              );
          });
        }),
        appBar: AppBar(
          title: Text('Daily$confirm'),
        ),
        body: ListView.builder(
            itemCount: memberList.length,
            itemBuilder: (context, index){
              return Text(memberList[index]);
            },


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
  const CustomDialog({Key? key, this.state = 0, this.addAction, this.addMemberAction}) : super(key: key);
  final state;
  final addAction;
  final addMemberAction;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  var count = 0;
  var input = {    'name': '',  };

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
        content: TextField(onChanged: (value){
          setState(() {
            input['name'] = value;
          });
        },),
        actions: [
          TextButton(onPressed: (){
            // add();
            // print(input['name']);
            widget.addMemberAction(input['name']);

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



