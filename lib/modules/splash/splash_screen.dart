import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';
import 'package:patel_samaj_app/common/widgets/app_loader.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';
import 'package:patel_samaj_app/data/notifiers/language_notifier.dart';
import 'package:patel_samaj_app/l10n/l10n.dart';
import 'package:patel_samaj_app/main.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppButton(
              label: context.l10n.exampleToShowLoader,
              onPressed: () async {
                getIt<AppLoader>().show();
                await Future.delayed(const Duration(seconds: 3));
                getIt<AppLoader>().hide();
              },
            ),
            SizedBox(height: 10.h),
            AppButton(
              label: context.l10n.changeLanguage,
              onPressed: () async {
                context.read<LanguageNotifier>().changeLanguage();
              },
            ),
          ],
        ),
      ),
    );
  }
}
