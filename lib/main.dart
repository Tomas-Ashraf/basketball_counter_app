import 'package:basketball_counter_app/app_layout/app_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Basketball Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.orange),
        primarySwatch: Colors.blue,
      ),
      home: const PointsCounter(),
    );
  }
}
