

import 'package:flutter/material.dart';

List<Product> products = [
  
  Product(name: 'كوكيز الجمعات', description: '', image: Image.asset('images/products/box.png')),
  Product(name: 'كوكيز كلاسيك', description: '', image: Image.asset('images/products/box.png')),
  
];

class Product {
  String name ;
  String description ;
  Image image ;

  Product({ required this.name , required this.description , required this.image });
}