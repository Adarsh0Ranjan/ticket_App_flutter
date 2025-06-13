import 'package:flutter/material.dart';
import 'package:ticket_app/widgets/text_style_third.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String topText;
  final String bottomText;
  final CrossAxisAlignment crossAxisAlignment;

  const AppColumnTextLayout({
    super.key,
    required this.topText,
    required this.bottomText,
    this.crossAxisAlignment = CrossAxisAlignment.center
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TextStyleThird(text: topText),
        SizedBox(height: 5),
        TextStyleThird(text: bottomText)
      ],
    );
  }
}
