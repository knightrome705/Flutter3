import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'Page2.dart';

class Pst extends StatefulWidget {
  const Pst({Key? key}) : super(key: key);

  @override
  State<Pst> createState() => _PstState();
}

class _PstState extends State<Pst> {
  TextEditingController controller=TextEditingController();
TextEditingController controller1=TextEditingController();
postdata()async{
  var data={
  "email":controller.text,
    "password":controller1.text
  };
  Response response=await post(Uri.parse("http://192.168.29.180:8080/logindata"),body:jsonEncode(data));
  if(response.statusCode==200){
     var d = jsonDecode(response.body);

     if(d["message"]=="success"){
       Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Pg1()));
     }
    print(response.body);
  }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Postdata.com",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          TextField(
        decoration: InputDecoration(
          label: Text("email"),
          border: OutlineInputBorder()
      ),
            controller:controller ,
          ),
          SizedBox(
            height: 50,
          ),
          TextField(
            decoration: InputDecoration(
              label: Text("password"),
            border: OutlineInputBorder()
    ),
            controller:controller1 ,
          ),
          ElevatedButton(onPressed: (){
            postdata();

    }, child:Text("submit"))
        ],
      ),
    );
  }
}
