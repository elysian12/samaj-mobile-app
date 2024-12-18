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
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    moveToNextScreen();
  }

  void moveToNextScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    getIt<AppRouter>().replace(const DigitalAdminRoute());
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.backGroundGradient,
        ),
        child: Column(
          children: [
            const Spacer(),
            FadeIn(
              duration: const Duration(milliseconds: 1000),
              child: Image.asset(
                'assets/images/splash_illus.png',
                scale: 3,
              ),
            ),
            const Spacer(),
            Text(
              context.l10n.developed_with_love,
              style: AppTextStyle.heading4.copyWith(
                color: AppColors.white,
              ),
            ),
            SizedBox(height: 2.h),
            Image.asset(
              'assets/cohesyn_logo.png',
              scale: 6,
            ),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}


  // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       AppButton(
      //         label: context.l10n.exampleToShowLoader,
      //         onPressed: () async {
      //           getIt<AppLoader>().show();
      //           await Future.delayed(const Duration(seconds: 3));
      //           getIt<AppLoader>().hide();
      //         },
      //       ),
      //       SizedBox(height: 10.h),
      //       AppButton(
      //         label: context.l10n.changeLanguage,
      //         onPressed: () async {
      //           context.read<LanguageNotifier>().changeLanguage();
      //         },
      //       ),
      //     ],
      //   ),
      // ),