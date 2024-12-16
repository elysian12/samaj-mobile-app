import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import '../../core/styles/style.dart';

@RoutePage()
class FamilyScreen extends StatelessWidget {
  const FamilyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Family', style: AppTextStyle.heading3),
        actions: [IconButton(icon: const Icon(Icons.search), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeader('Family Members', () {}),
            _buildFamilyMembers(),
            const SizedBox(height: 10),
            _buildHeader('Relatives', () {}),
            _buildFamilyMembers(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(String title, VoidCallback onAddPressed) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          Text(title, style: AppTextStyle.heading3),
          const Spacer(),
          TextButton(
            onPressed: onAddPressed,
            child: Text('+ Add', style: AppTextStyle.heading3.copyWith(color: AppColors.secondaryPurple1)),
          ),
        ],
      ),
    );
  }

  Widget _buildFamilyMembers() {
    return SizedBox(
      height: 275 * 2,
      width: double.infinity,
      child: Wrap(
        spacing: 0.0,
        runSpacing: 15.0,
        children: List.generate(4, (_) => const FamilyMemberCard()),
      ),
    );
  }
}

class FamilyMemberCard extends StatelessWidget {
  const FamilyMemberCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Stack(
        children: [
          SizedBox(
            height: 275,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  const CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.primaryPurple1,
                  ),
                  const SizedBox(height: 8),
                  Text('Aman Singh', style: AppTextStyle.heading3),
                  Text('Father', style: AppTextStyle.bodyText1),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryPurple1,
                      foregroundColor: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text('View Profile'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: IconButton(icon: const Icon(Icons.more_vert_rounded), onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
