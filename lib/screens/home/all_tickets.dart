import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/utils/app_routes.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,

      appBar: AppBar(
        title: Text("All Tickets"),
        centerTitle: true,
        backgroundColor: AppStyles.bgColor,
        elevation: 0,
      ),

      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: ticketList
                  .map(
                    (singleTicket) => GestureDetector(
                      onTap: () {
                        var index = ticketList.indexOf(singleTicket);
                        print("tapped ticket $index");
                        Navigator.pushNamed(
                          context,
                          AppRoutes.ticketView,
                          arguments: {"index": index},
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: TicketView(
                          ticket: singleTicket,
                          wholeScreen: true,
                        ),
                      ),
                    ),
                  )
                  .toList(),

              // spacing: 20,
            ),
          ),
        ],
      ),
    );
  }
}
