import 'package:flutter/material.dart';

class Product {
  Product({
  required this.id,
  required this.image,
  required this.name,
  required this.color,
  required this.border
  });
  final String id;
  final String image;
  final String name;
  final Color color;
  final Color border;
}

List<Product> ProductAll = [
  Product(
    id: '1',
    image:
        'assets/images/beverages.png',
    name: 'Beverages',
    color: Color(0xffEDF7FC),
    border: Color(0xffB7DFF5),    
  ),
   Product(
    id: '2',
    image:
        'assets/images/cooking oil&ghee.png',
    name: 'Cooking Oil \n& Ghee',
    color: Color(0xffFFF6EE),
    border: Color(0xffF8A44C),
  ),
   Product(
    id: '3',
    image:
        'assets/images/meat&fish.png',
    name: 'Meat & Fish',
    color: Color(0xffFDE8E4),
    border: Color(0xffF7A593),
  ),
  Product(
    id: '4',
    image:
        'assets/images/bakery&snacks.png',
    name: 'Bakery & Snacks',
    color: Color(0xffF3EFFA),
    border: Color(0xffD3B0E0),
  ),
  Product(
    id: '5',
    image:
        'assets/images/dairy&eggs.png',
    name: 'Dairy & Eggs',
    color: Color(0xffFFF6EE),
    border: Color(0xffF8A44C),
  ),
  Product(
    id: '6',
    image:
        'assets/images/fruits&vegetable.png',
    name: 'Frash Fruits \n& Vegetable',
    color: Color(0xffF1F8F1),
    border: Color(0xff53B175),
  ),
];