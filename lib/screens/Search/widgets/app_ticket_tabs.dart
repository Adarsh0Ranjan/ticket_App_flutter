import 'package:flutter/material.dart';

class AppTicketTabs extends StatelessWidget {
  const AppTicketTabs({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Color(0xFFF4F6FD),
      ),
      child: Row(
        children: [
          SegmentTab(title: "Airline Tickets", isSelected: true, isLeft: true),
          SegmentTab(title: "Hotels", isSelected: false, isLeft: false),
        ],
      ),
    );
  }
}

class SegmentTab extends StatelessWidget {
  final String title;
  final bool isSelected;
  final bool isLeft;

  const SegmentTab({
    super.key,
    required this.title,
    required this.isSelected,
    required this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.white : Colors.transparent,
        borderRadius:
            isLeft
                ? const BorderRadius.horizontal(left: Radius.circular(50))
                : const BorderRadius.horizontal(right: Radius.circular(50)),
      ),
      padding: const EdgeInsets.symmetric(vertical: 7),
      width: size.width * 0.44,
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
