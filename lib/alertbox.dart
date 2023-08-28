import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ab extends StatefulWidget {
  const Ab({Key? key}) : super(key: key);

  @override
  State<Ab> createState() => _AbState();
}

class _AbState extends State<Ab> {
  vv()async{
   await showDialog(context: context, builder: (context){
      return AlertDialog(
        content: Container(
          height: 100,
          width: 100,
          child: Text("Alert"),
        ),
        actions: [ TextButton(onPressed: (){}, child:Text("ok")),
        TextButton(onPressed: (){
          Navigator.of(context).pop();
        }, child: Text("cancel"))],
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Colors.blue,
          onPressed: (){
            vv();
          },child: Text("Alertbox"),
        ),
      ),
    );

  }
}
