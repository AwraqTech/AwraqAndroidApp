import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(
            kToolbarHeight + 1.0),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              title: const Text(
                'Settings'
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    Icons.info_outline,
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                    size: 26,
                  ),
                  onPressed: () {
                    // Add action for Info icon button here
                  },
                ),
              ],
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white12
                        : Colors.black12,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        // apply padding horizontal here and keep the other padding verticals
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xFF43A2FE),
                child: Text('A', style: TextStyle(color: Colors.white)),
              ),
              title: Text('Headline'),
              subtitle: Text('Supporting text'),
              trailing: Icon(
                Icons.logout_outlined,
                color: Color(0xFF43A2FE),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
            child: ListTile(
              leading: const Icon(
                Icons.manage_accounts_outlined,
                size: 26,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              subtitle: Text(
                'Modify your account information',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white70
                      : Colors.black54,
                ),
              ),
              onTap: () {
                // Handle tap on Account tile
                print("Account tile tapped");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
            child: ListTile(
              leading: const Icon(
                Icons.notifications_outlined,
                size: 26,
              ),
              title: Text(
                'Notifications',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              subtitle: Text(
                'Enable or disable notifications',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white70
                      : Colors.black54,
                ),
              ),
              onTap: () {
                // Handle tap on Notifications tile
                print("Notifications tile tapped");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
            child: ListTile(
              leading: const Icon(
                Icons.language_outlined,
                size: 26,
              ),
              title: Text(
                'Language',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              subtitle: Text(
                'Change your app language',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white70
                      : Colors.black54,
                ),
              ),
              onTap: () {
                // Handle tap on Language tile
                print("Language tile tapped");
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 3.0, horizontal: 5.0),
            child: ListTile(
              leading: const Icon(
                Icons.help_outline,
                size: 26,
              ),
              title: Text(
                'Help',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              subtitle: Text(
                'Check help center',
                style: TextStyle(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white70
                      : Colors.black54,
                ),
              ),
              onTap: () {
                // Handle tap on Help tile
                print("Help tile tapped");
              },
            ),
          ),
        ],
      ),
    );
  }
}
