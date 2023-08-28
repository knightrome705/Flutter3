import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bts extends StatefulWidget {
  const Bts({Key? key}) : super(key: key);

  @override
  State<Bts> createState() => _BtsState();
}

class _BtsState extends State<Bts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          //color: Colors.blue,
          onPressed: ()async{
            await showModalBottomSheet(context: context, builder:(context){
              return Container(
                height: 200,
              );
            });

          },child: Text("bottomsheet"),
        ),
      ),
    );
  }
}
