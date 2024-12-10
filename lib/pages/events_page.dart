import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Events'),
          bottom: TabBar(
            tabs: const [
              Tab(text: 'Sales & Expenses'),
              Tab(text: 'Orders & Returns'),
            ],
            labelColor: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Colors.black, // Dynamic text color based on brightness
            unselectedLabelColor:
                Theme.of(context).brightness == Brightness.dark
                    ? Colors.white70
                    : Colors.black54, // Unselected tab text color
            indicatorColor:
                const Color(0xFF43A2FE), // Custom tab indicator color
          ),
        ),
        body: const TabBarView(
          children: [
            UpcomingTab(), // Upcoming events tab
            PastTab(), // Past events tab
          ],
        ),
      ),
    );
  }
}

class UpcomingTab extends StatelessWidget {
  const UpcomingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text(
              'Sale-Recieved: 33 SR',
              style: TextStyle(fontWeight: FontWeight.bold), // Make title bold
            ),
            subtitle: Text(
              "Longer supporting text to demonstrate how the text wraps and how setting 'ListTile.isThreeLine = true' aligns leading and trailing widgets to the top vertically with the text.",
              maxLines: 2,  // Limit subtitle to 2 lines
              overflow: TextOverflow.ellipsis,  // Handle overflow
            ),
            trailing: Icon(Icons.call_made),
            isThreeLine: true,
          ),
          Divider(height: 0),
          ListTile(
            title: Text(
              'Expense-Delivered: 546 SR',
              style: TextStyle(fontWeight: FontWeight.bold), // Make title bold
            ),
            subtitle: Text(
              "Longer supporting text to demonstrate how the text wraps and how setting 'ListTile.isThreeLine = true' aligns leading and trailing widgets to the top vertically with the text.",
              maxLines: 2,  // Limit subtitle to 2 lines
              overflow: TextOverflow.ellipsis,  // Handle overflow
            ),
            trailing: Icon(Icons.call_received),
            isThreeLine: true,
          ),
          Divider(height: 0),
        ],
      ),
    );
  }
}

class PastTab extends StatelessWidget {
  const PastTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Past Events',
        style: TextStyle(
          fontSize: 24,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black, // Dynamic text color based on brightness
        ),
      ),
    );
  }
}
