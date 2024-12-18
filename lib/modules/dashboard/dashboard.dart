import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:animate_do/animate_do.dart';

@RoutePage()
class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  FadeIn(
                    duration: const Duration(milliseconds: 800),
                    child: _buildImageContainer(),
                  ),
                  const SizedBox(height: 20),
                  FadeInUp(
                    duration: const Duration(milliseconds: 600),
                    child: _buildCategories(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {},
          ),
          _buildLanguageSelector(),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          _buildCategoryRow([
            _buildCategoryItem('My Profile', 'assets/icons/ic_profile.png'),
            _buildCategoryItem('My family', 'assets/icons/ic_family.png'),
            _buildCategoryItem(
                'Admin.\nCommittee', 'assets/icons/ic_committee.png'),
          ]),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem(
                'Search\nMembers', 'assets/icons/ic_search_members.png'),
            _buildCategoryItem('Directory', 'assets/icons/ic_directory.png'),
            _buildCategoryItem('Occupation', 'assets/icons/ic_occupation.png'),
          ]),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Post', 'assets/icons/ic_post.png'),
            _buildCategoryItem('Useful', 'assets/icons/ic_useful.png'),
            _buildCategoryItem('Photo\nGallery', 'assets/icons/ic_photo.png'),
          ]),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Messages', 'assets/icons/ic_message.png'),
            const SizedBox(width: 50),
            _buildCategoryItem('Donation', 'assets/icons/ic_donate.png'),
          ], mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 16),
          _buildCategoryRow([
            _buildCategoryItem('Besna', 'assets/icons/ic_besna.png'),
            _buildCategoryItem(
                'Congrats.', 'assets/icons/ic_congratulation.png'),
            _buildCategoryItem(
                'Shradhanjali', 'assets/icons/ic_shradhanjali.png'),
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

  Widget _buildCategoryRow(List<Widget> items,
      {MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceBetween}) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: items,
    );
  }

  Widget _buildCategoryItem(String title, String icon) {
    return Container(
      height: 90.r,
      width: 90.r,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            icon,
            width: 28.r,
            height: 28.r,
          ),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.labelSmall,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
