import 'package:flutter/material.dart';
import 'package:ticket_app/screens/Search/widgets/app_text_icon.dart';
import 'package:ticket_app/screens/Search/widgets/app_ticket_tabs.dart';
import 'package:ticket_app/styles/app_styles.dart';

class SerachScreen extends StatelessWidget {
  const SerachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          SizedBox(height: 40),
          Text("What are\nyou Looking For", style: AppStyles.headLineStyle1.copyWith(fontSize: 36)),
          SizedBox(height: 40),
          AppTicketTabs(),
          SizedBox(height: 40),
          AppTextIcon(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          SizedBox(height: 20),
          AppTextIcon(icon: Icons.flight_land_rounded, text: "Arrival")
        ],
      ),
    );
  }
}
