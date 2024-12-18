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
class DigitalAdminScreen extends StatelessWidget {
  const DigitalAdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Digital Admin',
          style: AppTextStyle.heading2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              _buildDirectoryCard(
                title: 'Village',
                count: '15',
                imagePath: 'assets/images/village_illus.png',
                onTap: () {
                  getIt<AppRouter>().push(PickAreaRoute(isVillage: true));
                },
              ),
              _buildDirectoryCard(
                title: 'Mandal (in Amenabad)',
                count: '15',
                imagePath: 'assets/images/mandal_illus.png',
                onTap: () {
                  getIt<AppRouter>().push(PickAreaRoute(isMandal: true));
                },
              ),
              _buildDirectoryCard(
                title: 'Mandal (Others)',
                count: '15',
                imagePath: 'assets/images/mandal_illus.png',
                onTap: () {
                  getIt<AppRouter>().push(PickAreaRoute(isMandalOthers: true));
                },
              ),
            ],
          ),
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
