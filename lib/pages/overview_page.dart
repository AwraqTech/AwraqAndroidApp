import 'package:flutter/material.dart';

import '../notifications.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({super.key});

  // Method to show the bottom sheet modal
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows controlling the height of the bottom sheet
      backgroundColor: Colors.transparent, // Set background to transparent
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height * 0.4, // 40% of screen height
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? const Color(0xFF081014) // Dark mode background color
                : const Color(0xFFFFFFFF), // Light mode background color
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
        preferredSize: const Size.fromHeight(100), // Adjust the height of the AppBar to leave space for the border
        child: Stack(
          children: [
            // Container for the border spanning full width
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity, // Ensure the container spans the full width
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? const Color.fromARGB(255, 22, 22, 22)
                          : const Color.fromARGB(255, 238, 238, 238), // Border color
                      width: 1.0, // Border width
                    ),
                  ),
                ),
              ),
            ),
            // AppBar with transparent background
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16), // Add horizontal margin
              padding: const EdgeInsets.only(top: 16),
              child: AppBar(
                backgroundColor: Colors.transparent, // Set the AppBar background color to transparent
                elevation: 0, // Remove default elevation (shadow)
                leading: IconButton(
                  icon: const Icon(
                    Icons.account_circle,
                    size: 32,
                  ),
                  onPressed: () {
                    // Perform function here
                  },
                ),
                actions: [
                  IconButton(
                    icon: Icon(
                      Icons.notifications_outlined,
                      color: Theme.of(context).brightness == Brightness.dark
                          ? Colors.white
                          : Colors.black, // Dynamic color for notification icon
                      size: 32,
                    ),
                    onPressed: () {
                      // Navigate to NotificationsPage
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
                          : Colors.black, // Dynamic color for menu icon
                      size: 32,
                    ),
                    onPressed: () {
                      _showBottomSheet(context); // Show bottom sheet when more_vert is pressed
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Your action for the FAB
        },
        backgroundColor: const Color(0xFF43A2FE), // Background color of the FAB
        elevation: 0, // Remove the default shadow
        child: const Icon(
          Icons.chat_rounded, // Chat icon
          color: Color(0xFF081014), // Set the icon color to white
          size: 26,
        ),
      ),
    );
  }
}
