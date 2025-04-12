import 'package:flutter/material.dart';

class AlarmsPage extends StatelessWidget {
  const AlarmsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alarms')),
      body: AlarmListing(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarms'),
          BottomNavigationBarItem(icon: Icon(Icons.timer), label: 'Timer'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation
        },
      ),
    );
  }
}

class AlarmListing extends StatefulWidget {
  const AlarmListing({super.key});

  @override
  State<AlarmListing> createState() => _AlarmListingState();
}

class _AlarmListingState extends State<AlarmListing> {
  List<Alarm> alarms = [
    Alarm("07:00 AM", "Wake Up"),
    Alarm("08:00 AM", "Breakfast"),
  ];

  @override
  Widget build(BuildContext context) {
    return alarms.isEmpty
        ? Center(child: Text('No alarms set'))
        : ListView.builder(
          itemCount: alarms.length,
          itemBuilder: (context, index) {
            final alarm = alarms[index];
            return AlarmCard(time: alarm.time, label: alarm.label);
          },
        );
  }
}

class Alarm {
  final String time;
  final String label;

  const Alarm(this.time, this.label);
}

class AlarmCard extends StatelessWidget {
  final String time;
  final String label;

  const AlarmCard({super.key, required this.time, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(label),
        subtitle: Text(time),
        trailing: IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {
            // Handle delete action
          },
        ),
      ),
    );
  }
}
