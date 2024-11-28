import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

class AppButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final bool isLoading;
  final bool isOutlined;
  final double? fontSize;
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 50.h,
        width: double.infinity,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: isOutlined ? null : AppColors.backGroundGradient,
          border: isOutlined
              ? Border.all(
                  color: AppColors.fontColor,
                  width: 2,
                )
              : null,
          borderRadius: BorderRadius.circular(8.r),
        ),
        child: isLoading
            ? LoadingAnimationWidget.flickr(
                leftDotColor: AppColors.primaryPurple,
                rightDotColor: AppColors.secondaryPurple,
                size: 28.r,
              )
            : Text(
                label,
                style: AppTextStyle.heading4.copyWith(
                  color: isOutlined ? AppColors.fontColor : AppColors.white,
                  fontSize: fontSize,
                ),
              ),
      ),
    );
  }
}
