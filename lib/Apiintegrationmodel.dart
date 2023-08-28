import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:untitled2/productModel.dart';

class ApiInt extends StatefulWidget {
  const ApiInt({Key? key}) : super(key: key);

  @override
  State<ApiInt> createState() => _ApiIntState();
}

class _ApiIntState extends State<ApiInt> {
 Future<Products?> getdata() async {
  Response response= await get(Uri.parse("https://dummyjson.com/products"));
  if(response.statusCode==200){
    var body=jsonDecode(response.body);
    print(body);
    final products = productsFromJson(response.body);
    return products;
  }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: FutureBuilder<Products?>(
        future: getdata(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data!.products.length,
            itemBuilder: (context,index) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(snapshot.data!.products[index].title),
                    Text(snapshot.data!.products[index].price.toString())
                  ],
                );
              }
              else{
                return Center(child: Text("Somethong wrong"));
              }
            }
          );
        }

      ),
    );
  }
}
