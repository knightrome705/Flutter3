
import 'package:flutter/material.dart';

class Martin extends StatefulWidget {
  const Martin({Key? key}) : super(key: key);

  @override
  State<Martin> createState() => _MartinState();
}

class _MartinState extends State<Martin> {
  TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: TextField(
            controller:controller,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 200,horizontal: 500
              ),
              label: Text("enter description"),
              border: OutlineInputBorder()
            ),
          ),
        ),
      ),
    );
  }
}
