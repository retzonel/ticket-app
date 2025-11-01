import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TextStyleSecond extends StatelessWidget {
  final String text;
  final Color color;
  final TextAlign align;
  const TextStyleSecond({
    super.key,
    required this.text,
    this.align = TextAlign.start,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: AppStyles.headLineStyle2.copyWith(color: color),
    );
  }
}
