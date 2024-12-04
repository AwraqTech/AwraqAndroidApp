import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Set AppBar background color based on theme
    Color appBarBackgroundColor =
        Theme.of(context).brightness == Brightness.dark
            ? const Color.fromARGB(
                255, 8, 13, 20) // Dark background color for AppBar
            : const Color(0xFFFFFFFF); // Light background color for AppBar

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(90), // Set height of AppBar
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 16), // Set horizontal margin
              padding: const EdgeInsets.only(top: 16),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 32,
              ),
              onPressed: () {
                Navigator.of(context).pop(); // Go back to the previous screen
              },
            ),
            title: const Text(
              'Notifications',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ), // Title of the AppBar
            backgroundColor:
                appBarBackgroundColor, // Set AppBar background color dynamically
            actions: [
              IconButton(
                icon: const Icon(
                  Icons.refresh,
                  size: 32,
                ),
                onPressed: () {
                  // You can add functionality to refresh the page here
                  print("Page Refreshed");
                },
              ),
            ],
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Notifications Page',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
