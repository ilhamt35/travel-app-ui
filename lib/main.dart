import 'package:flutter/material.dart';
import 'package:travel_app/home/home_screen.dart';
import 'package:travel_app/place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(243,248,249,1)
      ),
      home: HomeScreen(),
    );
  }
}

var listPlace = [
  Place(
    category: 'Parks',
    icon: 'assets/icons/trees.png',
    name: 'Lincoln Park',
    location: '34 West 57th Street, PH',
    distance: '9.8 mi',
    image: 'assets/images/gambar1.png'
  ),
  Place(
    category: 'Hotels',
    icon: 'assets/icons/hotels.png',
    name: 'Lincoln Park',
    location: '34 West 57th Street, PH',
    distance: '9.8 mi',
    image: 'assets/images/gambar2.png'
  ),
  Place(
    category: 'Hotels',
    icon: 'assets/icons/trees.png',
    name: 'Lincoln Park',
    location: '34 West 57th Street, PH',
    distance: '9.8 mi',
    image: 'assets/images/gambar2.png'
  ),

];
