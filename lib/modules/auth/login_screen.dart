import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';
import 'package:patel_samaj_app/common/widgets/app_loader.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
        child: AppButton(
          label: 'Login',
          onPressed: () async {
            getIt<AppLoader>().show();
            await Future.delayed(const Duration(seconds: 2));
            getIt<AppLoader>().hide();
          },
        ),
      ),
    );
  }
}
