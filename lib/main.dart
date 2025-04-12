import 'package:flutter/material.dart';
import 'package:simon_alarm/alarms_page.dart';

<<<<<<< HEAD
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 2, 39, 68),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 75),
            Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: Colors.black, // Added opacity for better look
                  blurRadius: 8,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: const Center(child: Text('Current Alarm\n 00:00 AM/PM')), // This is the Container's child
          ),
            ),
          ],
        ),
      ),
    );
  }
}
=======
void main() {
  runApp(
    MaterialApp(
      home: MainNavigation(),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => AlarmsPage(),
      //   // '/countdown': (context) => CountdownScreen(),
      //   //'/game': (context) => SimonGameScreen(),
      //   //'/success': (context) => SuccessScreen(),
      // },
    ),
  );
}

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [AlarmsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarms'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
>>>>>>> be95370 (Update navigation mechanism)
