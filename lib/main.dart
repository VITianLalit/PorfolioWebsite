import 'package:flutter/material.dart';
import 'package:lalitsahu/porfolio.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          canvasColor: Colors.deepPurpleAccent.shade700,
          useMaterial3: true,
          fontFamily: "poppins"
      ),
      home: Portfolio(),
    );
  }
}
