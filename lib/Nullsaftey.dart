import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sat extends StatefulWidget {
  const Sat({Key? key}) : super(key: key);

  @override
  State<Sat> createState() => _SatState();
}

class _SatState extends State<Sat> {
  String? a;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Text(a??"null"),
    );
  }
}
