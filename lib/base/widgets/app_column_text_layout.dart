import 'package:flutter/material.dart';
import 'package:ticket_app/base/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final CrossAxisAlignment crossAxisAlignment;
  final String firstText;
  final String secondText;
  const AppColumnTextLayout({
    super.key,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.firstText,
    required this.secondText
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(text: firstText),
        const SizedBox(height: 5),
        TextStyleThird(text: secondText),
      ],
    );
  }
}
