import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class GalleryCategoryScreen extends StatefulWidget {
  final bool isEvent;
  final bool isActivity;
  final bool isProject;
  final bool isOtherGallery;

  const GalleryCategoryScreen({
    super.key,
    this.isEvent = false,
    this.isActivity = false,
    this.isProject = false,
    this.isOtherGallery = false,
  });

  @override
  State<GalleryCategoryScreen> createState() => _GalleryCategoryScreenState();
}

class _GalleryCategoryScreenState extends State<GalleryCategoryScreen> {
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
          _getTitle(),
          style: AppTextStyle.heading2,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: _buildEventGrid(),
        ),
      ),
    );
  }

  String _getTitle() {
    if (widget.isEvent) return 'Our Events';
    if (widget.isActivity) return 'Our Activities';
    if (widget.isProject) return 'Our Projects';
    if (widget.isOtherGallery) return 'Other Gallery';
    return 'Gallery';
  }

  Widget _buildEventGrid() {
    final items = _getItems();

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16.w,
        mainAxisSpacing: 16.h,
        childAspectRatio: 1.2,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return _buildEventCard(
          date: items[index]['date']!,
          title: items[index]['title']!,
        );
      },
    );
  }

  List<Map<String, String>> _getItems() {
    if (widget.isEvent) {
      return [
        {'date': '15 Aug', 'title': 'Annual Function'},
        {'date': '26 Jan', 'title': 'Republic Day'},
        {'date': '2 Oct', 'title': 'Gandhi Jayanti'},
        {'date': '25 Dec', 'title': 'Christmas Event'},
        {'date': '31 Dec', 'title': 'New Year Event'},
      ];
    }

    if (widget.isActivity) {
      return [
        {'date': '', 'title': 'Blood Donation'},
        {'date': '', 'title': 'Tree Plantation'},
        {'date': '', 'title': 'Health Camp'},
        {'date': '', 'title': 'Education Drive'},
      ];
    }

    if (widget.isProject) {
      return [
        {'date': '', 'title': 'Community Center'},
        {'date': '', 'title': 'Library Project'},
      ];
    }
    if (widget.isOtherGallery) {
      return [
        {'date': '', 'title': 'Other Gallery'},
        {'date': '', 'title': 'Other Gallery'},
      ];
    }

    return [];
  }

  Widget _buildEventCard({
    required String date,
    required String title,
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
            // if (date.isNotEmpty) ...[
            //   Text(
            //     date,
            //     style: AppTextStyle.heading3,
            //   ),
            //   SizedBox(height: 8.h),
            // ],
            Text(
              title,
              style: AppTextStyle.heading4,
            ),
          ],
        ),
      ),
    );
  }
}
