import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _buildLanguageSelector(),
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _buildImageContainer(),
          const SizedBox(height: 20),
          _buildCategoryRow([
            _buildCategoryItem('My Profile', Icons.person),
            _buildCategoryItem('My family', Icons.family_restroom),
            _buildCategoryItem('Admin. Committee', Icons.admin_panel_settings),
          ]),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Search Members', Icons.search),
            _buildCategoryItem('Directory', Icons.list),
            _buildCategoryItem('Occupation', Icons.work),
          ]),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Post', Icons.post_add),
            _buildCategoryItem('Useful', Icons.star),
            _buildCategoryItem('Photo Gallery', Icons.photo),
          ]),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Messages', Icons.message),
            const SizedBox(width: 50),
            _buildCategoryItem('Donation', Icons.monetization_on),
          ], mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Besna', Icons.card_giftcard),
            _buildCategoryItem('Congrats.', Icons.celebration),
            _buildCategoryItem('Shradhanjali', Icons.celebration),
          ]),
        ],
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return Container(
      padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: AppColors.primaryPurple1),
      ),
      child: Row(
        children: [
          _buildLanguageButton("Eng", AppColors.primaryPurple1, Colors.white),
          _buildLanguageButton("Guj", Colors.transparent, Colors.black),
        ],
      ),
    );
  }

  Widget _buildLanguageButton(String text, Color bgColor, Color textColor) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: bgColor,
        gradient: bgColor == Colors.transparent
            ? null
            : const LinearGradient(
                colors: [AppColors.primaryPurple1, AppColors.secondaryPurple1],
              ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: AppTextStyle.labelSmall.copyWith(color: textColor),
      ),
    );
  }

  Widget _buildImageContainer() {
    return Container(
      height: 200,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://example.com/your-image.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCategoryRow(List<Widget> items, {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceBetween}) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: items,
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Container(
      height: 115,
      width: 115,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 40),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.caption,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
