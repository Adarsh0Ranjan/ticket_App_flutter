import 'package:flutter/material.dart';
import '../utils/all_Json.dart';
import '../widgets/ticket_view.dart';

class AllTickets extends StatelessWidget {
  const AllTickets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("All Tickets")),
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
              children:
              ticketList.map((ticket) {
                int index = ticketList.indexOf(ticket);
                return Padding(
                  padding: EdgeInsets.only(
                    bottom: index < 4 ? 12.0 : 0,
                  ), // space between, not after last
                  child: TicketView(ticket: ticket),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
