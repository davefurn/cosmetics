import 'package:cosmetics_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main()=> runApp(Myapp());

class Myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: HomeScreen(),
      ),
    );
  }
}
