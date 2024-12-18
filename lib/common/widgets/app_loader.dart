import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';
import 'package:patel_samaj_app/router/app_router.dart';

class AppLoader {
  AppLoader._privateConstructor();
  static final AppLoader _instance = AppLoader._privateConstructor();
  factory AppLoader() {
    return _instance;
  }

  final GlobalKey<NavigatorState> navigatorKey =
      getIt<AppRouter>().navigatorKey;
  OverlayEntry? _overlayEntry;

  void show() {
    if (_overlayEntry != null) return;

    _overlayEntry = _createOverlayEntry();
    navigatorKey.currentState?.overlay?.insert(_overlayEntry!);
  }

  void hide() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  OverlayEntry _createOverlayEntry() {
    return OverlayEntry(
      builder: (context) => Material(
        color: Colors.black.withOpacity(0.5),
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LoadingAnimationWidget.flickr(
                  leftDotColor: AppColors.primaryBlue,
                  rightDotColor: AppColors.secondaryPurple,
                  size: 56.r,
                ),
                Text(
                  'Loading...',
                  style: AppTextStyle.bodyText2.copyWith(
                    color: AppColors.fontColor,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
