import 'package:flutter/material.dart';

String uri = 'http://192.168.43.128:9000';

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color.fromARGB(255, 29, 201, 192),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromARGB(255, 255, 165, 10);
  static const backgroundColor = Colors.grey;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;

// STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images.app.goo.gl/6bgSmCcy8UgA7bJV6',
    'https://images.app.goo.gl/wnwHX48ZPdvVBfrYA',
    'https://images.app.goo.gl/ATjT8thpbevmFjVZA',
    'https://images.app.goo.gl/nR8MBXKWZbDLaWEY8',
    'https://images.app.goo.gl/D75AvGkge1U73x7Q6',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Fruits',
      'image': 'assets/images/fruits.png',
    },
    {
      'title': 'Vegetables',
      'image': 'assets/images/veget.png',
    },
    {
      'title': 'Potatoes',
      'image': 'assets/images/patato.png',
    },
    {
      'title': 'Legume',
      'image': 'assets/images/legume.png',
    },
    {
      'title': 'Corn',
      'image': 'assets/images/corn.png',
    },
  ];
}
