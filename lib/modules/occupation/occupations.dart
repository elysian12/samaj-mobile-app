import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

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
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'Occupation',
          style: AppTextStyle.heading2,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Two items per row
            childAspectRatio: 2, // Aspect ratio for the items
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: occupations.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    occupations[index],
                    style: AppTextStyle.heading4,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '20',
                    style: AppTextStyle.bodyText2.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
