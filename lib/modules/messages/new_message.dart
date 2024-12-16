import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Message'),
      ),
      body: Column(
        children: [
          // Search Bar
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Search by “Name”',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          // Contact List
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Number of contacts
              itemBuilder: (context, index) {
                return const Card(
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.png'), // Placeholder image
                    ),
                    title: Text('Amrita Singh'),
                    subtitle: Text('Phone No.: 827298729'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
