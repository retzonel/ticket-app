import 'package:flutter/material.dart';
import 'package:ticket_app/base/bottom_nav_bar.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/screens/home/all_tickets.dart';
import 'package:ticket_app/screens/home/hotel/all_hotels.dart';
import 'package:ticket_app/screens/ticket/ticket_screen.dart';

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
        AppRoutes.allTickets: (context) => const AllTickets(),
        AppRoutes.ticketView: (context) => const TicketScreen(),
        AppRoutes.allHotels: (context) => const AllHotels(),
      },
    );
  }
}
