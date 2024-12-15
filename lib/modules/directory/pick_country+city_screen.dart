import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';
import 'package:patel_samaj_app/l10n/l10n.dart';
import 'package:patel_samaj_app/router/app_router.dart';
import 'package:patel_samaj_app/router/app_router.gr.dart';

@RoutePage()
class PickCountryCityScreen extends StatelessWidget {
  final bool isCountry;
  const PickCountryCityScreen({super.key, this.isCountry = true});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          context.l10n.country,
          style: AppTextStyle.heading2,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'The total number of members in each ${isCountry ? 'country' : 'city'}',
                style: AppTextStyle.bodyText3,
              ),
              SizedBox(height: 16.h),
              _buildCountryGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCountryGrid() {
    final countries = [
      {'name': 'India', 'count': '15'},
      {'name': 'America', 'count': '15'},
      {'name': 'Canada', 'count': '15'},
      {'name': 'Australia', 'count': '15'},
      {'name': 'United Kingdom', 'count': '15'},
      {'name': 'New Zealand', 'count': '15'},
      {'name': 'United States', 'count': '15'},
      {'name': 'United States', 'count': '15'},
      {'name': 'United States', 'count': '15'},
      {'name': 'United States', 'count': '15'},
      {'name': 'United States', 'count': '15'},
      // Add more countries as needed
    ];

    final cities = [
      {'name': 'Surat', 'count': '15'},
      {'name': 'Ahmedabad', 'count': '15'},
      {'name': 'Bhavnagar', 'count': '15'},
      {'name': 'Rajkot', 'count': '15'},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1.5,
      ),
      itemCount: isCountry ? countries.length : cities.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            getIt<AppRouter>().push(const MemberListRoute());
          },
          child: _buildCountryCard(
            countryName:
                isCountry ? countries[index]['name']! : cities[index]['name']!,
            memberCount: isCountry
                ? countries[index]['count']!
                : cities[index]['count']!,
          ),
        );
      },
    );
  }

  Widget _buildCountryCard({
    required String countryName,
    required String memberCount,
  }) {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              countryName,
              style: AppTextStyle.heading4,
            ),
            SizedBox(height: 8.h),
            Text(
              memberCount,
              style: AppTextStyle.heading4.copyWith(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
