import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/screens/all_tickets.dart';

void main() {
  runApp(const MyApp());
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
      routes: {
        "all_tickets": (context) => const AllTickets(),
      },
    );
  }
}
