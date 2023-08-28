import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';


class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
loc()async{

  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  latitude=position.latitude;
  longitude=position.longitude;
  List<Placemark> placemarks = await placemarkFromCoordinates(position.latitude, position.longitude);
  print(placemarks);
  setState(() {
    controller.text = placemarks[2].toString();
  });

}
double? latitude;
double? longitude;
TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextField(
          onTap: (){
            loc();
          },controller: controller,
          readOnly: true,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            suffixIcon: Icon(Icons.search)
          ),

          onChanged: (value){

          },
        ),
      ),
    );
  }
}
