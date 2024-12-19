import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/common/constants/app_assets.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';

@RoutePage()
class AdvertisementScreen extends StatelessWidget {
  const AdvertisementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(AppAssets.advertisementImage),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: AppButton(
                onPressed: () {},
                label: 'Click here to enter',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
