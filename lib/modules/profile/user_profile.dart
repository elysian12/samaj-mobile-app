// ignore_for_file: library_private_types_in_public_api

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/styles/style.dart';

@RoutePage()
class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  int _selectedIndex = 0;

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aman Singh', style: AppTextStyle.heading3),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Edit action
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              // Delete action
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(200.0),
          child: Column(
            children: [
              const CircleAvatar(radius: 75),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(3, (index) {
                  final titles = ['Personal', 'Family', 'Professional'];
                  return GestureDetector(
                    onTap: () => _onTabTapped(index),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(titles[index], style: AppTextStyle.heading3),
                        if (_selectedIndex == index) Container(height: 2, width: 60, color: AppColors.secondaryPurple1),
                      ],
                    ),
                  );
                }),
              ),
              const Divider(color: Colors.black12),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _selectedIndex,
        children: [
          _buildPersonalInfo(),
          const Center(child: Text('Family Information')),
          const Center(child: Text('Professional Information')),
        ],
      ),
    );
  }

  Widget _buildPersonalInfo() {
    final personalInfo = [
      {'label': 'Name:', 'value': 'Aman Singh'},
      {'label': 'Relation:', 'value': 'Father'},
      {'label': 'Mobile Number:', 'value': '87191091091'},
      {'label': 'Email Id:', 'value': 'amansingh28929@gmail.com'},
      {'label': 'Gender:', 'value': 'Male'},
      {'label': 'Blood Group:', 'value': 'B+'},
      {'label': 'Birth Date:', 'value': '13 June, 2001'},
      {'label': 'Mosal Village:', 'value': 'Ahemdabad'},
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: personalInfo.map((info) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(info['label']!, style: AppTextStyle.heading4),
                Text(info['value']!, style: const TextStyle(fontSize: 16)),
                const SizedBox(height: 8),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
