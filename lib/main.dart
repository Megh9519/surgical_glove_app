
import 'package:flutter/material.dart';
import 'package:surgical_glove_app/login_page.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
    home: LoginPage()
    );
  }
}