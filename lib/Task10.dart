import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Ts2 extends StatefulWidget {
  const Ts2({Key? key}) : super(key: key);

  @override
  State<Ts2> createState() => _Ts2State();
}

class _Ts2State extends State<Ts2> {
  var data;
  display()async{
    Response response=await get(Uri.parse("https://reqres.in/api/users/2"));
    if(response.statusCode==200){
      var result=jsonDecode(response.body);
      setState(() {
        data=result;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed:(){
            display();
          } , child:Text("submit")),
          data==null?SizedBox():ListTile(
            title: Text(data["data"]["first_name"]),
            subtitle: Text(data["data"]["last_name"]),
            leading: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(data["data"]["avatar"])
                )
              ),
            ),
          )
        ],
      ),
    );
  }
}
