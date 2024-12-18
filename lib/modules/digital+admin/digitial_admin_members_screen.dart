import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/l10n/l10n.dart';

@RoutePage()
class DigitalAdminMembersScreen extends StatelessWidget {
  const DigitalAdminMembersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Digital Administrator Members',
          style: AppTextStyle.heading3,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          _buildDigitalMemberCard(
            role: 'Digital Head',
            name: 'John Doe',
            phoneNumber: '9876543210',
          ),
          SizedBox(height: 16.h),
          _buildDigitalMemberCard(
            role: 'Social Media Manager',
            name: 'Jane Smith',
            phoneNumber: '8765432109',
          ),
          // Add more digital admin members as needed
        ],
      ),
    );
  }

  Widget _buildDigitalMemberCard({
    required String role,
    required String name,
    required String phoneNumber,
  }) {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Container(
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              role,
              style: AppTextStyle.heading4,
            ),
            SizedBox(height: 12.h),
            Row(
              children: [
                CircleAvatar(
                  radius: 30.r,
                  backgroundColor: Colors.grey[200],
                  child: Icon(
                    Icons.person,
                    size: 30.r,
                    color: Colors.grey[400],
                  ),
                ),
                SizedBox(width: 16.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: AppTextStyle.bodyText2,
                          children: [
                            const TextSpan(
                              text: 'Name: ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: name,
                              style: AppTextStyle.bodyText2.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                      RichText(
                        text: TextSpan(
                          style: AppTextStyle.bodyText3,
                          children: [
                            const TextSpan(
                              text: 'Phone No: ',
                              style: TextStyle(color: Colors.grey),
                            ),
                            TextSpan(
                              text: phoneNumber,
                              style: AppTextStyle.bodyText3.copyWith(
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
