import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Ts12 extends StatefulWidget {
  const Ts12({Key? key}) : super(key: key);

  @override
  State<Ts12> createState() => _Ts12State();
}

class _Ts12State extends State<Ts12> {
  var data;
  display()async{
  Response response= await get(Uri.parse("https://dummyjson.com/products"));
  if(response.statusCode==200){
    setState(() {
      data=jsonDecode(response.body);
    });
  }
  }
  @override
  void initState() {
    display();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount:data["products"].length ,
        itemBuilder: (context,index) {
          return ListView(
            children: [
              Card(
                elevation: 10,
                child:Column(
                  children: [
                    Text(data["products"][index]["title"]),
                    Text(data["products"][index]["price"].toString()),
                    Text(data["products"][index]["discountPercentage"].toString()),
                    Card(
                      child: Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(data["products"][index]["thumbnail"])
                            )
                        ),
                      ),

                    )
                  ],
                ),
              ),

            ],
          );
        }
      ),
    );
  }
}
