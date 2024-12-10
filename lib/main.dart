import 'package:flutter/material.dart';
import 'pages/overview_page.dart';
import 'pages/events_page.dart';
import 'pages/pos_page.dart';
import 'pages/settings_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // Remove the debug banner
      theme: ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white, // Light mode background color
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor:
              Color(0xFFF1F1F1), // Light background color for nav bar
          selectedItemColor: Color(0xFF081014), // Light active icon color
          unselectedItemColor:
              Colors.black45, // Inactive icons will be black45 by default
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        scaffoldBackgroundColor:
            const Color.fromARGB(255, 8, 13, 20), // Dark mode background color
        useMaterial3: true,
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color.fromARGB(
              255, 8, 13, 20), // Dark background color for nav bar
          selectedItemColor: Color(0xFF43A2FE), // Dark active icon color
          unselectedItemColor:
              Colors.black45, // Inactive icons will be black45 by default
        ),
      ),
      themeMode:
          ThemeMode.system, // Automatically switch between light and dark mode
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  // List of screens for each index
  final List<Widget> _pages = [
    const OverviewPage(),
    const EventsPage(),
    const PosPage(),
    const SettingsPage(),
  ];

  // Method to handle bottom navigation bar changes
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white12
                  : Colors.black12,
              width: 1.0, // Border width
            ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onItemTapped,
          destinations: <NavigationDestination>[
            NavigationDestination(
              icon: Icon(
                Icons.analytics_rounded,
                size: 26,
                color: _selectedIndex == 0
                    ? const Color(0xFF43A2FE)
                    : null, // Change color when selected
              ),
              label: 'Overview',
              selectedIcon: const Icon(
                Icons.analytics_rounded,
                size: 26,
                color: Color(0xFF43A2FE), // Always show the selected color
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.timer_rounded,
                size: 26,
                color: _selectedIndex == 1
                    ? const Color(0xFF43A2FE)
                    : null, // Change color when selected
              ),
              label: 'Events',
              selectedIcon: const Icon(
                Icons.timer_rounded,
                size: 26,
                color: Color(0xFF43A2FE), // Always show the selected color
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.store_rounded,
                size: 26,
                color: _selectedIndex == 2
                    ? const Color(0xFF43A2FE)
                    : null, // Change color when selected
              ),
              label: 'POS',
              selectedIcon: const Icon(
                Icons.store_rounded,
                size: 26,
                color: Color(0xFF43A2FE), // Always show the selected color
              ),
            ),
            NavigationDestination(
              icon: Icon(
                Icons.settings,
                size: 26,
                color: _selectedIndex == 3
                    ? const Color(0xFF43A2FE)
                    : null, // Change color when selected
              ),
              label: 'Settings',
              selectedIcon: const Icon(
                Icons.settings,
                size: 26,
                color: Color(0xFF43A2FE), // Always show the selected color
              ),
            ),
          ],
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? const Color.fromARGB(255, 8, 13, 20) // Dark background color
              : const Color(0xFFFFFFFF), // Light background color
          indicatorColor: Theme.of(context).brightness == Brightness.dark
              ? const Color.fromARGB(
                  255, 34, 55, 85) // Dark indicator background
              : const Color(0xFFBFE0FF), // Light indicator background
        ),
      ),
    );
  }
}
