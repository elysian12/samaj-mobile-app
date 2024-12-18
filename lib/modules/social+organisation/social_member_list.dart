import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class SocialMemberListScreen extends StatelessWidget {
  const SocialMemberListScreen({super.key, required this.organizationName});

  final String organizationName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          organizationName,
          style: AppTextStyle.heading3,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          _buildMemberCard(
            role: 'President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          SizedBox(height: 16.h),
          _buildMemberCard(
            role: 'Vice President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          SizedBox(height: 16.h),
          _buildMemberCard(
            role: 'Vice President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          SizedBox(height: 16.h),
          _buildMemberCard(
            role: 'Vice President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          SizedBox(height: 16.h),
          _buildMemberCard(
            role: 'Vice President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          SizedBox(height: 16.h),
          _buildMemberCard(
            role: 'Vice President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          SizedBox(height: 16.h),
          _buildMemberCard(
            role: 'Vice President',
            name: 'Amrita Singh',
            phoneNumber: '829720929',
          ),
          // Add more member cards as needed
        ],
      ),
    );
  }

  Widget _buildMemberCard({
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
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
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
