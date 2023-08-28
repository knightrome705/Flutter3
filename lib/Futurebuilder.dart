import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Fb extends StatefulWidget {
  const Fb({Key? key}) : super(key: key);

  @override
  State<Fb> createState() => _FbState();
}

class _FbState extends State<Fb> {
  var result;
  Future<dynamic> display()async{
  Response response= await get(Uri.parse("https://microsoftedge.github.io/Demos/json-dummy-data/64KB.json"));
  if(response.statusCode==200){
  result=jsonDecode(response.body);
    print(result);
    return result;
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: display(),
          builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data.length,
                  itemBuilder: (context,index) {
                    return ListTile(
                      title: Text(snapshot.data[index]["name"]),
                      subtitle: Text(snapshot.data[index]["language"]),
                    );
                  }
              );
            }
            else{
              return Center(
                child: Text("Something went wrong"),
              );
            }
          }
        ),
      ),
    );
  }
}
