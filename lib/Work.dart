import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Wk extends StatefulWidget {
  const Wk({Key? key}) : super(key: key);

  @override
  State<Wk> createState() => _WkState();
}

class _WkState extends State<Wk> {
  var result;
  Future<dynamic> display()async{
   Response response=await get(Uri.parse("https://dummyjson.com/users"));
  result=jsonDecode(response.body);
  return result;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: FutureBuilder(
          future: display(),
          builder: (context,snapshot) {
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child: CircularProgressIndicator());
            }
            if(snapshot.hasData){
              return ListView.builder(
                itemCount: snapshot.data.length,
                  itemBuilder: (context,index) {
                    return Card(
                      elevation: 10,
                      child: Container(
                        height:100,
                        width: 100,
                        child: Column(
                          children: [
                            Text(snapshot.data["users"][index]["firstName"]),
                            Text(snapshot.data["users"][index]["age"].toString()),
                            Text(snapshot.data["users"][index]["email"]),
                            Text(snapshot.data["users"][index]["phone"].toString())
                          ],
                        ),
                      ),
                    );
                  }
              );
            }
            else{
              return Center(
                child: Text("something went wrong"),
              );
            }

          }
        )
          ),
        );
  }
}
