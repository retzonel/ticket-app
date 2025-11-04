import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_fourth.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const AppColumnTextLayout({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.firstText,
    required this.secondText,
    this.isColor
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(text: firstText, isColor: isColor,),
        const SizedBox(height: 5),
        TextStyleFourth(text: secondText, isColor: isColor,),
      ],
    );
  }
}
