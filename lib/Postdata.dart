import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Pst extends StatefulWidget {
  const Pst({Key? key}) : super(key: key);

  @override
  State<Pst> createState() => _PstState();
}

class _PstState extends State<Pst> {
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  postdata()async{
    Map body={
    "name":controller1.text,
    "job":controller2.text
    };
  Response response= await post(Uri.parse("http://192.168.1.49:8080/putdata"),body:jsonEncode(body) );
    if(response.statusCode==200){
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller:controller1 ,
            ),
            TextField(
              controller: controller2,
            ),
            ElevatedButton(onPressed: (){
              postdata();
            }, child: Text("submit"))
          ],
        ),
      ),
    );
  }
}
