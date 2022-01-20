import 'package:flutter/material.dart';
import 'package:profile/view/homepage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo",
      theme: ThemeData(
       
        primarySwatch: Colors.blueGrey
      ),
      home: HomePage(),
    );
  }
}