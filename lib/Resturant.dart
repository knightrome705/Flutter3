// To parse this JSON data, do
//
//     final resturants = resturantsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Resturants> resturantsFromJson(String str) => List<Resturants>.from(json.decode(str).map((x) => Resturants.fromJson(x)));

String resturantsToJson(List<Resturants> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Resturants {
  int id;
  String name;
  String neighborhood;
  String photograph;
  String address;
  Latlng latlng;
  String cuisineType;
  OperatingHours operatingHours;
  List<Review> reviews;

  Resturants({
    required this.id,
    required this.name,
    required this.neighborhood,
    required this.photograph,
    required this.address,
    required this.latlng,
    required this.cuisineType,
    required this.operatingHours,
    required this.reviews,
  });

  factory Resturants.fromJson(Map<String, dynamic> json) => Resturants(
    id: json["id"],
    name: json["name"],
    neighborhood: json["neighborhood"],
    photograph: json["photograph"],
    address: json["address"],
    latlng: Latlng.fromJson(json["latlng"]),
    cuisineType: json["cuisine_type"],
    operatingHours: OperatingHours.fromJson(json["operating_hours"]),
    reviews: List<Review>.from(json["reviews"].map((x) => Review.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "neighborhood": neighborhood,
    "photograph": photograph,
    "address": address,
    "latlng": latlng.toJson(),
    "cuisine_type": cuisineType,
    "operating_hours": operatingHours.toJson(),
    "reviews": List<dynamic>.from(reviews.map((x) => x.toJson())),
  };
}

class Latlng {
  double lat;
  double lng;

  Latlng({
    required this.lat,
    required this.lng,
  });

  factory Latlng.fromJson(Map<String, dynamic> json) => Latlng(
    lat: json["lat"].toDouble(),
    lng: json["lng"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "lat": lat,
    "lng": lng,
  };
}

class OperatingHours {
  String monday;
  String tuesday;
  String wednesday;
  String thursday;
  String friday;
  String saturday;
  String sunday;

  OperatingHours({
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
    required this.sunday,
  });

  factory OperatingHours.fromJson(Map<String, dynamic> json) => OperatingHours(
    monday: json["Monday"],
    tuesday: json["Tuesday"],
    wednesday: json["Wednesday"],
    thursday: json["Thursday"],
    friday: json["Friday"],
    saturday: json["Saturday"],
    sunday: json["Sunday"],
  );

  Map<String, dynamic> toJson() => {
    "Monday": monday,
    "Tuesday": tuesday,
    "Wednesday": wednesday,
    "Thursday": thursday,
    "Friday": friday,
    "Saturday": saturday,
    "Sunday": sunday,
  };
}

class Review {
  String name;
  String date;
  int rating;
  String comments;

  Review({
    required this.name,
    required this.date,
    required this.rating,
    required this.comments,
  });

  factory Review.fromJson(Map<String, dynamic> json) => Review(
    name: json["name"],
    date: json["date"],
    rating: json["rating"],
    comments: json["comments"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "date": date,
    "rating": rating,
    "comments": comments,
  };
}
