import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';
import 'package:patel_samaj_app/router/app_router.dart';
import 'package:patel_samaj_app/router/app_router.gr.dart';

@RoutePage()
class SocialOrganizationScreen extends StatelessWidget {
  const SocialOrganizationScreen({super.key});

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
          'Social Service Organization',
          style: AppTextStyle.heading3,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: List.generate(
              8, // Number of organizations to show
              (index) => _buildOrganizationCard(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOrganizationCard() {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().push(
          SocialMemberListRoute(
            organizationName: 'Aman Singh Organization',
          ),
        );
      },
      child: FadeInUp(
        duration: const Duration(milliseconds: 500),
        child: Container(
          margin: EdgeInsets.only(bottom: 16.h),
          padding: EdgeInsets.all(16.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.r),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 8,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aman Singh Organization',
                      style: AppTextStyle.heading4,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '70 Members',
                      style: AppTextStyle.bodyText3.copyWith(
                        color: const Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.chevron_right,
                color: AppColors.primaryBlue,
                size: 24.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
