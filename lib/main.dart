import 'package:flutter/material.dart';
import 'package:fitnessapp/pages/overview_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
        // theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF4951BA).withOpacity(0.08)),
      // theme: ThemeData(
      //   primarySwatch: Colors.green
      // ),
      color: Colors.white,
      home: SafeArea(child: Overview())
    );
  }
}
