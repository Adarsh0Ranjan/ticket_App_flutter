import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ticket_app/media.dart';
import 'package:ticket_app/screens/Search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/Search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/screens/Search/widgets/find_tickets.dart';
import 'package:ticket_app/styles/app_styles.dart';
import 'package:ticket_app/widgets/app_double_text.dart';

class SerachScreen extends StatelessWidget {
  const SerachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text(
            "What are\nyou Looking For",
            style: AppStyles.headLineStyle1.copyWith(fontSize: 36),
          ),
          SizedBox(height: 40),
          AppTicketTabs(),
          SizedBox(height: 40),
          AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 20),
          AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival"),
          SizedBox(height: 40),
          FindTickets(),
          SizedBox(height: 40),
          AppDoubleText(
            bigText: "Upcoming Flights",
            smallText: "View All",
            func: () {},
          ),
          SizedBox(height: 40),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(12),
                width: size.width * 0.42,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      blurRadius: 1,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      height: 190,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AppMedia.planeSit),
                        ),
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "20 % Discount on early booking of thus flight. DOnt MIss",
                      style: AppStyles.headLineStyle2,
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(

                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
