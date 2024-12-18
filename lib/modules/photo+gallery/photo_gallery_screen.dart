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
class PhotoGalleryScreen extends StatelessWidget {
  const PhotoGalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Photo Gallery',
          style: AppTextStyle.heading2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              _buildGalleryCard(
                title: 'Our Event',
                imagePath: 'assets/images/event_illus.png',
                onTap: () {
                  getIt<AppRouter>().push(GalleryCategoryRoute(isEvent: true));
                },
              ),
              _buildGalleryCard(
                title: 'Our Activity',
                imagePath: 'assets/images/activity_illus.png',
                onTap: () {
                  getIt<AppRouter>()
                      .push(GalleryCategoryRoute(isActivity: true));
                },
              ),
              _buildGalleryCard(
                title: 'Our Project',
                imagePath: 'assets/images/project_illus.png',
                onTap: () {
                  getIt<AppRouter>()
                      .push(GalleryCategoryRoute(isProject: true));
                },
              ),
              _buildGalleryCard(
                title: 'Other Gallery',
                imagePath: 'assets/images/other_gallery_illus.png',
                onTap: () {
                  getIt<AppRouter>()
                      .push(GalleryCategoryRoute(isOtherGallery: true));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGalleryCard({
    required String title,
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
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 5,
                offset: const Offset(0, 2),
              ),
            ],
          ),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: AppTextStyle.heading4,
                ),
              ),
              Image.asset(
                imagePath,
                height: 100.h,
                width: 150.w,
                fit: BoxFit.contain,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
