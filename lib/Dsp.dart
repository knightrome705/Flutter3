import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Dp extends StatefulWidget {
  const Dp({Key? key}) : super(key: key);

  @override
  State<Dp> createState() => _DpState();
}

class _DpState extends State<Dp> {
  var data1;
  display()async{
   Response response= await get(Uri.parse("https://reqres.in/api/users/2"));
   var result=response.body;
   if(response.statusCode==200) {
     var res2=jsonDecode(response.body);
    // print(result);
     setState(() {
       data1=res2;
     });
   }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: (){
                  display();
                },child: Text("submit"),
              ),
             data1==null?SizedBox(): Text(data1["data"]["email"])
            ],
          ),
        ),
      ),
    );
  }
}
