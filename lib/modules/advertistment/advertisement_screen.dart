import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/common/widgets/app_chached_network.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class AdvertisementScreen extends StatefulWidget {
  const AdvertisementScreen({super.key});

  @override
  State<AdvertisementScreen> createState() => _AdvertisementScreenState();
}

class _AdvertisementScreenState extends State<AdvertisementScreen> {
  final List<Map<String, String>> advertisements = [
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1734275923064-fc1aa3103c86?q=80&w=1594&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': "Charlie's Ice Cream",
      'description': 'Round the corner ice cream shop - Your local favorite!',
    },
    {
      'imageUrl':
          'https://images.unsplash.com/photo-1594950988426-374080113536?q=80&w=1738&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Capitol Illustration',
      'description':
          'Vintage style illustration of people walking near Capitol',
    },
    {
      'imageUrl':
          'https://plus.unsplash.com/premium_photo-1670333351939-742e3de2f2ff?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'title': 'Capitol Illustration',
      'description':
          'Vintage style illustration of people walking near Capitol',
    },
    // Add more ads as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Advertisements',
          style: AppTextStyle.heading3,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: advertisements.map((ad) => _buildAdCard(ad)).toList(),
          ),
        ),
      ),
    );
  }

  Widget _buildAdCard(Map<String, String> ad) {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Container(
        margin: EdgeInsets.only(bottom: 12.h),
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12.r),
              child: SizedBox(
                height: 300.h,
                width: double.infinity,
                child: AppCachedNetworkImage(
                  imgUrl: ad['imageUrl']!,
                  width: double.infinity,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
