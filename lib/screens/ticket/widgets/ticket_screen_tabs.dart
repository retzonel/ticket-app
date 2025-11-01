import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/app_tabs.dart';

class TicketScreenTabs extends StatelessWidget {
  const TicketScreenTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTabs(leftText: "Upcoming", rightText: "Previous");
  }
}