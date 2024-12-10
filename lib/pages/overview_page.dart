import 'package:flutter/material.dart';
import '../notifications.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFF081014)
                : const Color(0xFFFFFFFF),
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: const Center(
            child: Text(
              'Bottom Sheet Content',
              style: TextStyle(fontSize: 18),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'Overview Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            kToolbarHeight + 1.0), // Adjusted height to account for the border
        child: Column(
          children: [
            // AppBar with transparent background
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text('Overview'),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.notifications_outlined,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    size: 26,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NotificationsPage()),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    size: 26,
                  ),
                  onPressed: () {
                    _showBottomSheet(context);
                  },
                ),
              ],
            ),
            // Border for the bottom of the AppBar
            Container(
              width: double.infinity, // Make the container span the full width
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white12 // Dark theme divider color
                        : Colors.black12, // Light theme divider color
                    width:
                        1.0, // Border width (can adjust if overflow continues)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF43A2FE),
        elevation: 0,
        child: const Icon(
          Icons.chat_rounded,
          color: Color(0xFF081014),
          size: 26,
        ),
      ),
    );
  }
}
