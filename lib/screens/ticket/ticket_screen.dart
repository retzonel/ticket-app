import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_tabs.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_screen_tabs.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 15),
          Text("Tickets", style: AppStyles.headLineStyle1),
          const SizedBox(height: 20),
          TicketScreenTabs(),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 16),
            child: TicketView(ticket: ticketList[0], isColor: true,),
          ),
        ],
      ),
    );
  }
}
