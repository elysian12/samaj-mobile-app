import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:animate_do/animate_do.dart';

import 'widgets/app_drawer.dart';

@RoutePage()
class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final List<String> imageUrls = [
    'https://plus.unsplash.com/premium_photo-1681484213764-8a608699ce73?q=80&w=2340&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1506929562872-bb421503ef21?q=80&w=2368&auto=format&fit=crop&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    'https://images.unsplash.com/photo-1501426026826-31c667bdf23d?q=80&w=2236&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ];

  final PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoSlide();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  void _startAutoSlide() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < imageUrls.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const AppDrawer(),
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
                  SizedBox(height: 40.h),
                  Text(
                    'Categories',
                    style: AppTextStyle.heading3,
                  ),
                  SizedBox(height: 20.h),
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
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu, color: Colors.black),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
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
    return SizedBox(
      height: 200,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: imageUrls.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: DecorationImage(
                    image: NetworkImage(imageUrls[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                imageUrls.length,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _currentPage == index
                        ? Colors.black
                        : Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ),
          ),
        ],
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
