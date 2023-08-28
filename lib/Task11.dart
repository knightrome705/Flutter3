import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Ts11 extends StatefulWidget {
  const Ts11({Key? key}) : super(key: key);

  @override
  State<Ts11> createState() => _Ts11State();
}

class _Ts11State extends State<Ts11> {
  var data;
  display()async{
   Response response= await get(Uri.parse("https://reqres.in/api/users?page=2"));
   if(response.statusCode==200){
   var result= jsonDecode(response.body);
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
          ElevatedButton(onPressed: (){
            display();
          }, child:Text("data")),
          data==null?SizedBox():Expanded(
            child: ListView.builder(
              itemCount: data["data"].length,
              itemBuilder: (context,index) {
                return ListTile(
                  title: Text(data["data"][index]["first_name"]),
                  subtitle: Text(data["data"][index]["last_name"]),
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: NetworkImage(data["data"][index]["avatar"])
                      )
                    ),
                  )
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
