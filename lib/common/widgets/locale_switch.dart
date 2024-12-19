import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/data/notifiers/language_notifier.dart';
import 'package:provider/provider.dart';

class LocaleSwitchWidget extends StatefulWidget {
  const LocaleSwitchWidget({super.key});

  @override
  State<LocaleSwitchWidget> createState() => _LocaleSwitchWidgetState();
}

class _LocaleSwitchWidgetState extends State<LocaleSwitchWidget> {
  @override
  Widget build(BuildContext context) {
    LanguageNotifier languageNotifier = context.read<LanguageNotifier>();

    return Container(
      width: 0.24.sw,
      padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: AppColors.greyMedium.withOpacity(0.2),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          GestureDetector(
            onTap: () {
              if (languageNotifier.locale == const Locale('gu')) {
                languageNotifier.changeLanguage();
                setState(() {});
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: languageNotifier.locale == const Locale('en') ? AppColors.primaryPurple : Colors.transparent,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                'Eng',
                style: AppTextStyle.bodyText2.copyWith(
                  color: languageNotifier.locale == const Locale('en') ? Colors.white : AppColors.fontColor,
                ),
              ),
            ),
          ),
          SizedBox(width: 8.w),
          GestureDetector(
            onTap: () {
              if (languageNotifier.locale == const Locale('en')) {
                languageNotifier.changeLanguage();
                setState(() {});
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
              decoration: BoxDecoration(
                color: languageNotifier.locale == const Locale('gu') ? AppColors.primaryPurple : Colors.transparent,
                borderRadius: BorderRadius.circular(6.r),
              ),
              child: Text(
                'Guj',
                style: AppTextStyle.bodyText2.copyWith(
                  color: languageNotifier.locale == const Locale('gu') ? Colors.white : AppColors.fontColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
