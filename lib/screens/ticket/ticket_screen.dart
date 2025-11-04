import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/media.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/utils/app_json.dart';
import 'package:ticket_app/base/widgets/app_column_text_layout.dart';
import 'package:ticket_app/base/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/base/widgets/app_tabs.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';
import 'package:ticket_app/base/widgets/ticket_view.dart';
import 'package:ticket_app/screens/search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_positioned_circle.dart';
import 'package:ticket_app/screens/ticket/widgets/ticket_screen_tabs.dart';

class TicketScreen extends StatelessWidget {
  final bool isColor = true;
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              SizedBox(height: 15),
              Text("Tickets", style: AppStyles.headLineStyle1),
              const SizedBox(height: 20),
              TicketScreenTabs(),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[2], isColor: true),
              ),
              SizedBox(height: 1),
              Container(
                color: AppStyles.ticketColor,
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          firstText: "Flutter DB",
                          secondText: "Passenger",
                          crossAxisAlignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),

                        AppColumnTextLayout(
                          firstText: "5221 364869",
                          secondText: "passport",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: AppLayoutBuilderWidget(
                        randomDivider: 16,
                        isColor: isColor,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          firstText: "2465 8479948456",
                          secondText: "Number of E-Tickets",
                          crossAxisAlignment: CrossAxisAlignment.start,
                          isColor: isColor,
                        ),

                        AppColumnTextLayout(
                          firstText: "B37849",
                          secondText: "Booking code",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      child: AppLayoutBuilderWidget(
                        randomDivider: 16,
                        isColor: isColor,
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(AppMedia.visaCard, scale: 11),

                                TextStyleThird(
                                  text: " *** 2488",
                                  isColor: isColor,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            TextStyleFourth(
                              text: "Payment method",
                              isColor: isColor,
                            ),
                          ],
                        ),

                        AppColumnTextLayout(
                          firstText: "\$345",
                          secondText: "Price",
                          crossAxisAlignment: CrossAxisAlignment.end,
                          isColor: isColor,
                        ),
                      ],
                    ),

                    SizedBox(height: 1),
                  ],
                ),
              ),
              SizedBox(height: 1),
              //bottom of te detail ticket section
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),

                child: Container(
                  //barcode
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BarcodeWidget(
                      height: 70,
                      data: 'https://www.dbestech.com',
                      barcode: Barcode.code128(),
                      drawText: false,
                      color: AppStyles.textColor,
                      width: double.infinity,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 16),
                child: TicketView(ticket: ticketList[2]),
              ),
            ],
          ),
          TicketPositionedCircle(isRight: true,),
          TicketPositionedCircle()
        ],
      ),
    );
  }
}
