import 'package:flutter/material.dart';

import 'pages/home_screen.dart';
import 'pages/navigattor.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Printer App',
      debugShowCheckedModeBanner: false,
      home: NavigattorScreen(),
    );
  }
}
//git push -u origin master
