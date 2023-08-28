import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Disp extends StatefulWidget {
  String? name,email;
  String? age,phone;
  bool? eng,mala,hind;
  int? male,female;

  Disp({required this.name,required this.age,required this.phone,required this.email,required this.eng,required this.hind,required this.mala,required this.male,required this.female});

  @override
  State<Disp> createState() => _DispState();
}

class _DispState extends State<Disp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Text("Name:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Expanded(child: Text(
               // readOnly: true,
                widget.name.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

              ))
            ],
          ),
          Row(
            children: [
              Text("Age:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Expanded(child: Text(
               // readOnly: true,
                widget.age.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ))

            ],
          ),
          Row(
            children: [
              Text("Phone number:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),Expanded(child: Text(
               // readOnly: true,
                widget.phone.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ))
            ],
          ),
          Row(
            children: [
              Text("Email:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Expanded(child: Text(
               // readOnly: true,
                widget.email.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Languages",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: Text(
               // readOnly: true,
                widget.mala==true?"Malayalam":"None",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(child: Text(
                //readOnly: true,
                widget.eng==true?"English":"None",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ))
            ],
          ),
          Row(
            children: [
              Expanded(child: Text(
                //readOnly: true,
                widget.hind==true?"Hindhi":"None",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ))
            ],
          ),
          Row(
            children: [
              Text("Gender:",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Expanded(child: Text(
                //readOnly: true,
                widget.male!=0?"male":"female",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),

              ))
            ],
          )
        ],
      ),
    );
  }
}
