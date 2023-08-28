import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Pg2 extends StatefulWidget {
  String? name;

  Pg2({required this.name}) ;


  @override
  State<Pg2> createState() => _Pg2State();
}

class _Pg2State extends State<Pg2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text(widget.name.toString())),
    );
  }
}
