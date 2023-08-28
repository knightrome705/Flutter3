import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/display.dart';

class Tk1 extends StatefulWidget {
  const Tk1({Key? key}) : super(key: key);

  @override
  State<Tk1> createState() => _Tk1State();
}

class _Tk1State extends State<Tk1> {
  var _key = GlobalKey<FormState>();
  bool? mala = false;
  bool? eng = false;
  bool? hind = false;
  int? male = 0;
  int? female = 0;
  String? name, age, phone, email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _key,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    Text(
                      "Name:",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 30,
                        width: 270,
                        child: TextFormField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              label: Text("Enter your name"),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else {
                              setState(() {
                                name = value;
                              });
                            }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Age:",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(27),
                      child: SizedBox(
                        height: 30,
                        width: 270,
                        child: TextFormField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              label: Text("Enter your age"),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else if (value.length > 3) {
                              return "Enter a valid age";
                            } else if (value.isNotEmpty) {
                              setState(() {
                                age = value;
                              });
                            }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Phone:",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        height: 30,
                        width: 250,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              label: Text("Enter your phone number"),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else if (value.length > 10 && value.length < 10) {
                              return "Enter a valid number";
                            } else {
                              setState(() {
                                phone = value;
                              });
                            }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: SizedBox(
                        width: 260,
                        height: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                              label: Text("Enter email"),
                              border: OutlineInputBorder()),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "required";
                            } else {
                              setState(() {
                                email = value;
                              });
                            }
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Language",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      value: mala,
                      onChanged: (value) {
                        setState(() {
                          mala = value;
                        });
                      }),
                  Text(
                    "Malayalam",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: eng,
                      onChanged: (value) {
                        setState(() {
                          eng = value;
                        });
                      }),
                  Text(
                    "English",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                children: [
                  Checkbox(
                      value: hind,
                      onChanged: (value) {
                        setState(() {
                          hind = value;
                        });
                      }),
                  Text(
                    "Hindi",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Gender",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Text(
                      "Male",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: 2,
                        groupValue: male,
                        onChanged: (value) {
                          setState(() {
                            male = value;
                            female = 0;
                          });
                        }),
                    Text(
                      "Female",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: 3,
                        groupValue: female,
                        onChanged: (value) {
                          setState(() {
                            female = value;
                            male = 0;
                          });
                        })
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 320,
                    height: 50,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(100)),
                    child: ElevatedButton(
                        onPressed: () {
                          bool validate = _key.currentState!.validate();
                          if (validate == true) {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Disp(
                                      name: name,
                                      age: age,
                                      phone: phone,
                                      email: email,
                                      eng: eng,
                                      mala: mala,
                                      hind: hind,
                                      male: male,
                                      female: female,
                                    )));
                          }
                        },
                        child: Text("Submit")),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
