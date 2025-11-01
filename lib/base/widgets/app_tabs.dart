import 'package:flutter/material.dart';

class AppTabs extends StatelessWidget {
  final String leftText;
  final String rightText;
  const AppTabs({super.key, required this.leftText, required this.rightText});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: Color(0xFFF4F6FD),
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
            ),

            child: Center(child: Text(leftText)),
          ),

          Container(
            padding: EdgeInsets.symmetric(vertical: 7),
            width: size.width * 0.45,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
            ),

            child: Center(child: Text(rightText)),
          ),
        ],
      ),
    );
  }
}
