import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/Martin.dart';

import 'Apiintegrationmodel.dart';
import 'Nullsaftey.dart';
import 'Post.dart';
import 'fetchdata.dart';

void main(){
  runApp(My_App());
}
class My_App extends StatefulWidget {
  const My_App({Key? key}) : super(key: key);

  @override
  State<My_App> createState() => _My_AppState();
}

class _My_AppState extends State<My_App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Martin(),
      theme: ThemeData(
        useMaterial3: true
      ),
    );
  }
}
