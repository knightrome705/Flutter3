// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Products productsFromJson(String str) => Products.fromJson(json.decode(str));

String productsToJson(Products data) => json.encode(data.toJson());

class Products {
  List<Product> products;

  Products({
    required this.products,
  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Product {
  int id;
  String title;
  String description;
  int price;
  double discountPercentage;
  double rating;
  int stock;
  String brand;
  String category;
  String thumbnail;
  List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.brand,
    required this.category,
    required this.thumbnail,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    description: json["description"],
    price: json["price"],
    discountPercentage: json["discountPercentage"].toDouble(),
    rating: json["rating"].toDouble(),
    stock: json["stock"],
    brand: json["brand"],
    category: json["category"],
    thumbnail: json["thumbnail"],
    images: List<String>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "description": description,
    "price": price,
    "discountPercentage": discountPercentage,
    "rating": rating,
    "stock": stock,
    "brand": brand,
    "category": category,
    "thumbnail": thumbnail,
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}
