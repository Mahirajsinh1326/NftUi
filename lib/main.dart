import 'package:flutter/material.dart';
import 'package:nftui/home_page.dart';

void main() {
  runApp(MyApp());
}

bool status = true;
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
