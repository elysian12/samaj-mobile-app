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
class PickAreaScreen extends StatelessWidget {
  final bool isVillage;
  final bool isMandal;
  final bool isMandalOthers;

  const PickAreaScreen({
    super.key,
    this.isVillage = false,
    this.isMandal = false,
    this.isMandalOthers = false,
  });

  String _getTitle(BuildContext context) {
    if (isVillage) return context.l10n.village;
    if (isMandal) return context.l10n.mandal_amenabad;
    if (isMandalOthers) return context.l10n.mandal_others;
    return '';
  }

  String _getSubtitle() {
    if (isVillage) return 'village';
    if (isMandal) return 'mandal';
    if (isMandalOthers) return 'mandal area';
    return '';
  }

  List<Map<String, String>> _getData() {
    if (isVillage) {
      return [
        {'name': 'Vadodara', 'count': '15'},
        {'name': 'Anand', 'count': '15'},
        {'name': 'Nadiad', 'count': '15'},
        {'name': 'Bharuch', 'count': '15'},
      ];
    }
    if (isMandal) {
      return [
        {'name': 'Amenabad', 'count': '15'},
        {'name': 'Karjan', 'count': '15'},
        {'name': 'Dabhoi', 'count': '15'},
        {'name': 'Padra', 'count': '15'},
      ];
    }
    // isMandalOthers
    return [
      {'name': 'Area 1', 'count': '15'},
      {'name': 'Area 2', 'count': '15'},
      {'name': 'Area 3', 'count': '15'},
      {'name': 'Area 4', 'count': '15'},
    ];
  }

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
          _getTitle(context),
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
                'The total number of members in each ${_getSubtitle()}',
                style: AppTextStyle.bodyText3,
              ),
              SizedBox(height: 16.h),
              _buildAreaGrid(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAreaGrid() {
    final items = _getData();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1.5,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            getIt<AppRouter>().push(const DigitalAdminMembersRoute());
          },
          child: _buildAreaCard(
            areaName: items[index]['name']!,
            memberCount: items[index]['count']!,
          ),
        );
      },
    );
  }

  Widget _buildAreaCard({
    required String areaName,
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
              areaName,
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
