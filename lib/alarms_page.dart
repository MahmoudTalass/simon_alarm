import 'package:flutter/material.dart';

class AlarmsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Alarms')),
        body: Center(child: Text('No alarms set')),
      ),
    );
  }
}
