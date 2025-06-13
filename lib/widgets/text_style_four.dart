import 'package:flutter/material.dart';
import 'package:ticket_app/styles/app_styles.dart';

class TextStyleFour extends StatelessWidget {
  final String text;
  final TextAlign textAlign;
  const TextStyleFour({super.key, required this.text, this.textAlign = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: AppStyles.headLineStyle4.copyWith(color: Colors.white),
      textAlign: textAlign,
    );
  }
}
