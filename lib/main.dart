import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());

  int x = 10;
  x == 10 ? print("He is a kid") : print("He is not a kid");
  // if (x == 10) {
  //   print("He is a kid");
  // } else {
  //   print("He is not a kid");
  // }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 255, 141, 2),
        ),
        useMaterial3: true,
      ),

      debugShowCheckedModeBanner: false,

      home: BottomNavBar(),
    );
  }
}
