import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OccupationScreen extends StatelessWidget {
  final List<String> occupations = [
    'Banking Service',
    'Beauty Salon',
    'C.A.',
    'Civil Service',
    'Doctor',
    'Education',
    'Engineer',
    'Entertainment',
    'Farmer',
    'Hotel/Restaurant',
    'Insurance Advisor',
    'Journalist',
    'Lawyer',
    'Manufacturing',
    'Police',
    'Photography',
    'Other',
    'Real Estate',
  ];

  OccupationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Occupation'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Two items per row
          childAspectRatio: 2, // Aspect ratio for the items
        ),
        itemCount: occupations.length,
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Text(
                occupations[index],
                style: const TextStyle(fontSize: 16),
              ),
            ),
          );
        },
      ),
    );
  }
}
