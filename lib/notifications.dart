import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color appBarBackgroundColor =
        Theme.of(context).brightness == Brightness.dark
            ? const Color.fromARGB(255, 8, 13, 20)
            : const Color(0xFFFFFFFF);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white12 // Dark theme divider color
                    : Colors.black12, // Light theme divider color
                width: 1.0, // Thickness of the border
              ),
            ),
          ),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                size: 26,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            title: const Text(
              'Notifications'
            ),
            backgroundColor: appBarBackgroundColor,
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
