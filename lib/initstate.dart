import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Ins extends StatefulWidget {
  const Ins({Key? key}) : super(key: key);

  @override
  State<Ins> createState() => _InsState();
}

class _InsState extends State<Ins> {
  fun(){
    print("hello");
  }
  @override
  void initState() {
    fun();
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                      shape: BoxShape.circle
                ),
              ),
            ),
            Card(
              color: Colors.red,
              child: ListTile(
                title: Text("Home"),
                
              ),
            )
          ],
        ),
      ),
    );
  }
}
