import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';
import 'package:patel_samaj_app/common/widgets/app_loader.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';

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
        child: AppButton(
          label: 'Example to show loader',
          onPressed: () async {
            getIt<AppLoader>().show();
            await Future.delayed(const Duration(seconds: 3));
            getIt<AppLoader>().hide();
          },
        ),
      ),
    );
  }
}
