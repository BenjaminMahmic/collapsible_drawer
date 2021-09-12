import 'package:collasable_drawer/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Collasable drawer',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.grey[900],
        primarySwatch: Colors.blue,
        fontFamily: 'Urbanist',
      ),
      home: const HomeScreen(),
    );
  }
}
