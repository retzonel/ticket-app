import 'package:flutter/material.dart';
import 'package:ticket_app/base/res/styles/app_styles.dart';

class TicketPositionedCircle extends StatelessWidget {
  final bool? isRight;
  const TicketPositionedCircle({super.key, this.isRight});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: isRight == null ? null : 22,
      right: isRight == null? 22 : null,
      top: 255,
      child: Container(
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2, color: AppStyles.textColor),
        ),
        child: CircleAvatar(maxRadius: 4, backgroundColor: AppStyles.textColor),
      ),
    );
  }
}
