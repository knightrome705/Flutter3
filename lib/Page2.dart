import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/page3.dart';

class Pg1 extends StatefulWidget {
  const Pg1({Key? key}) : super(key: key);

  @override
  State<Pg1> createState() => _Pg1State();
}

class _Pg1State extends State<Pg1> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                label: Text("Enter name"),
                border: OutlineInputBorder()
              ),
              controller: controller,
            ),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pg2(name: controller.text),));
            }, child:Text("submit"))
          ],
        ),
      ),
    );
  }
}
