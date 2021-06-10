import 'package:flutter/material.dart';
//Mis imports
import 'pages/home_page.dart';
class MyApp extends StatelessWidget{
  //Es un metodo para construir el widget
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
      
      
    );
  }
}