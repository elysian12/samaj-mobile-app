import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/l10n/l10n.dart';

@RoutePage()
class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});

  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}

class _MemberListScreenState extends State<MemberListScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'India',
          style: AppTextStyle.heading3,
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Implement search functionality
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: '${context.l10n.all} (100)'),
            Tab(text: '${context.l10n.male} (50)'),
            Tab(text: '${context.l10n.female} (50)'),
          ],
          labelStyle: AppTextStyle.heading5,
          unselectedLabelStyle: AppTextStyle.heading5,
          labelColor: AppColors.primaryBlue,
          unselectedLabelColor: Colors.black,
          indicatorColor: AppColors.primaryBlue,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildMembersList(), // All members
          _buildMembersList(), // Male members
          _buildMembersList(), // Female members
        ],
      ),
    );
  }

  Widget _buildMembersList() {
    return ListView.builder(
      padding: EdgeInsets.all(16.w),
      itemCount: 10, // Replace with actual data length
      itemBuilder: (context, index) {
        return _buildMemberCard();
      },
    );
  }

  Widget _buildMemberCard() {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(
            color: Colors.grey.shade200,
          ),
        ),
        child: Row(
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
                        TextSpan(
                          text: '${context.l10n.name}: ',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: 'Member Name',
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
                        TextSpan(
                          text: '${context.l10n.phone_number}: ',
                          style: const TextStyle(color: Colors.grey),
                        ),
                        TextSpan(
                          text: '1234567890',
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
      ),
    );
  }
}
