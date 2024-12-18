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
class DirectoryScreen extends StatelessWidget {
  const DirectoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          context.l10n.directory,
          style: AppTextStyle.heading2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              _buildStatisticsRow(),
              SizedBox(height: 20.h),
              _buildDirectoryCard(
                title: context.l10n.country,
                count: '15',
                imagePath: 'assets/images/country_illus.png',
                onTap: () {
                  getIt<AppRouter>().push(PickCountryCityRoute());
                },
              ),
              _buildDirectoryCard(
                title: context.l10n.city,
                count: '15',
                imagePath: 'assets/images/city_illus.png',
                onTap: () {
                  getIt<AppRouter>()
                      .push(PickCountryCityRoute(isCountry: false));
                },
              ),
              _buildDirectoryCard(
                title: context.l10n.village,
                count: '15',
                imagePath: 'assets/images/village_illus.png',
                onTap: () {},
              ),
              _buildDirectoryCard(
                title: context.l10n.mandal_amenabad,
                count: '15',
                imagePath: 'assets/images/mandal_illus.png',
                onTap: () {},
              ),
              _buildDirectoryCard(
                title: context.l10n.mandal_others,
                count: '15',
                imagePath: 'assets/images/mandal_illus.png',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatisticsRow() {
    return FadeIn(
      duration: const Duration(milliseconds: 500),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildStatCard('All', '100', AppColors.primaryBlue),
          SizedBox(width: 16.w),
          _buildStatCard('Male', '50', AppColors.primaryBlue),
          SizedBox(width: 16.w),
          _buildStatCard('Female', '50', AppColors.primaryBlue),
        ],
      ),
    );
  }

  Widget _buildStatCard(String title, String count, Color color) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: AppTextStyle.heading5,
            ),
            SizedBox(height: 4.h),
            Text(
              count,
              style: AppTextStyle.heading4.copyWith(color: color),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDirectoryCard({
    required String title,
    required String count,
    required String imagePath,
    required Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: FadeInUp(
        duration: const Duration(milliseconds: 500),
        child: Container(
          margin: EdgeInsets.only(bottom: 16.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.heading4,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      count,
                      style: AppTextStyle.heading4.copyWith(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(
                imagePath,
                height: 80.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
