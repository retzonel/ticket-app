import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';
import 'package:ticket_app/base/widgets/text_style_second.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class Hotel extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const Hotel({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: EdgeInsets.only(right: 16),
      width: size.width * 0.6,
      height: 350,
      decoration: BoxDecoration(
        color: AppStyles.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: AppStyles.primaryColor,
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage("assets/images/${hotel['image']}"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextStyleSecond(
              text: hotel["place"],
              color: AppStyles.kakiColor,
            ),
          ),

          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextStyleThird(text: hotel["destination"]),
          ),

          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextStyleSecond(
              text: "\$${hotel["price"]}",
              color: AppStyles.kakiColor,
            ),
          ),
        ],
      ),
    );
  }
}
