import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/styles/app_styles.dart';
import 'package:ticket_app/widgets/app_layoutbuilder_widget.dart';
import 'package:ticket_app/widgets/half_circle.dart';
import 'package:ticket_app/widgets/large_dot.dart';
import 'package:ticket_app/widgets/text_style_four.dart';
import 'package:ticket_app/widgets/text_style_third.dart';

import 'app_column_text_layout.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.8,
      child: Container(
        child: Column(
          children: [
            // blue part of the app
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21)),
                  color: AppStyles.ticketBlue
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TextStyleThird(text: ticket['from']['code']),
                      Expanded(child: Container()),
                      BigDot(),
                      Expanded(child: Stack(children: [
                        SizedBox(
                          height: 24,
                          child: AppLayoutBuilderWidget(randomDivider: 6),
                        ),
                        Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white)))
                      ],)),
                      BigDot(),
                      Expanded(child: Container()),
                      TextStyleThird(text: ticket['to']['code']),
                    ],
                  ),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      SizedBox(width: 100, child: TextStyleFour(text: ticket['from']['name'])),
                      Expanded(child: Container()),
                      Text(ticket['flying_time'], style: AppStyles.headLineStyle3.copyWith(color: Colors.white)),
                      Expanded(child: Container()),
                      SizedBox(width: 100, child: TextStyleFour(text: ticket['to']['name'], textAlign: TextAlign.end)),
                    ],
                  )
                ],
              ),
            ),
            // app layout builder
            Container(
              height: 20,
              color: AppStyles.ticketOrange,
              child: Row(
                children: [
                  HalfCircle(isRight: true),
                  Expanded(child: Container(child: AppLayoutBuilderWidget(randomDivider: 16, width: 6))),
                  HalfCircle(isRight: false)
                ],
              ),
            ),
            // departure details
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
                  color: AppStyles.ticketOrange
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                          topText: ticket['date'],
                          bottomText: "DATE",
                          crossAxisAlignment: CrossAxisAlignment.start),
                      AppColumnTextLayout(
                          topText: ticket['departure_time'],
                          bottomText: "Departure Time",
                          crossAxisAlignment: CrossAxisAlignment.center),
                      AppColumnTextLayout(
                          topText: ticket['number'].toString(),
                          bottomText: "Number",
                          crossAxisAlignment: CrossAxisAlignment.end),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
