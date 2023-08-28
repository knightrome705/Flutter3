import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Ft extends StatefulWidget {
  const Ft({Key? key}) : super(key: key);

  @override
  State<Ft> createState() => _FtState();
}
List clr=[Colors.red,Colors.green,Colors.blue,Colors.orange,Colors.pink,Colors.grey,Colors.yellow,Colors.brown,Colors.amber,Colors.red,Colors.green];
var data;
class _FtState extends State<Ft> {
  Future<dynamic> getdata() async {
    Response response=await get(Uri.parse("https://run.mocky.io/v3/b91498e7-c7fd-48bc-b16a-5cb970a3af8a"));
  if(response.statusCode==200){
      data=jsonDecode(response.body);
      return data;
  }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Restaurants.in"),
        elevation: 10,
      ),
      body:FutureBuilder(
        future: getdata(),
        builder: (context,snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child:CircularProgressIndicator());
          }
          if(snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data["restaurants"].length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 5,
                    child: Column(
                      children: [
                        Container(
                          height: 40,
                          width: 500,
                          color: clr[index],
                          child: Center(
                            child: Text(snapshot.data["restaurants"][index]["name"],
                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.white),),
                          ),
                        ),
                        Text(snapshot.data["restaurants"][index]["neighborhood"]),
                        Text(snapshot.data["restaurants"][index]["address"]),
                        Text(snapshot.data["restaurants"][index]["latlng"]["lat"]
                            .toString()),
                        Text(snapshot.data["restaurants"][index]["latlng"]["lng"]
                            .toString()),
                        Text("working hours"),
                        Text("Monday to Saturday"),
                        Text(snapshot.data["restaurants"][index]["operating_hours"]["Monday"]
                                .toString()),
                        Text("Sunday"),
                        Text(snapshot.data["restaurants"][index]["operating_hours"]["Sunday"]
                                .toString()),
                        Card(
                          elevation: 10,
                          child: Container(
                            height: 200,
                            width: 400,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black, width: 5),
                                color: clr[index],
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(snapshot.data["restaurants"][index]["photograph"])
                                )
                            ),
                          ),
                        )
                      ],
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
    );
  }
}
