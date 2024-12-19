import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/common/widgets/app_button.dart';
import 'package:patel_samaj_app/common/widgets/app_loader.dart';
import 'package:patel_samaj_app/common/widgets/app_text_field.dart';
import 'package:patel_samaj_app/common/widgets/locale_switch.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/data/di/service_locator.dart';
import 'package:patel_samaj_app/l10n/l10n.dart';
import 'package:patel_samaj_app/router/app_router.dart';
import 'package:patel_samaj_app/router/app_router.gr.dart';
import 'package:pinput/pinput.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  ValueNotifier<bool> isOtpPage = ValueNotifier(false);
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  PinTheme _buildPinTheme(Color borderColor) {
    return PinTheme(
      width: 0.06.sh,
      height: 0.06.sh,
      textStyle: AppTextStyle.bodyText2,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(14),
      ),
    );
  }

  Widget otpPage() {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: LocaleSwitchWidget(),
            ),
            Center(
              child: Text(
                context.l10n.otp_verification,
                style: AppTextStyle.heading2,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(
                context.l10n.please_enter_6_digit_verification_code_we_sent_to_your_mobile,
                textAlign: TextAlign.center,
                style: AppTextStyle.bodyText2.copyWith(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Pinput(
              controller: otpController,
              length: 6,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              defaultPinTheme: _buildPinTheme(AppColors.grey),
              focusedPinTheme: _buildPinTheme(AppColors.black),
              // onSubmitted: (value) => _verifyOTP(context, otpController.text.trim(), authService, isLoadingNotifier),
            ),
            SizedBox(height: 24.h),
            AppButton(
              label: context.l10n.verify,
              borderRadius: 14,
              onPressed: () async {
                getIt<AppLoader>().show();
                await Future.delayed(const Duration(seconds: 2));
                getIt<AppLoader>().hide();
                getIt<AppRouter>().push(const RegistrationRoute());
              },
            )
          ],
        ),
      ),
    );
  }

  Widget loginPage() {
    final formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Card(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Align(
                alignment: Alignment.centerRight,
                child: LocaleSwitchWidget(),
              ),
              Center(
                child: Text(
                  context.l10n.login,
                  style: AppTextStyle.heading2,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Text(
                  context.l10n.please_enter_your_mobile_number_to_receive_an_otp_for_verification,
                  textAlign: TextAlign.center,
                  style: AppTextStyle.bodyText2.copyWith(
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              AppTextField().buildMobileNumberInput(
                context,
                TextEditingController(),
                label: context.l10n.mobile_number,
                hintText: context.l10n.enter_your_phone_number,
              ),
              AppButton(
                label: context.l10n.send_otp,
                borderRadius: 14,
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    getIt<AppLoader>().show();
                    isOtpPage.value = true;
                    getIt<AppLoader>().hide();
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColors.backGroundGradient,
        ),
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/splash_illus.png',
              scale: 3.5,
            ),
            ValueListenableBuilder<bool>(
              valueListenable: isOtpPage,
              builder: (context, value, child) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: value ? otpPage() : loginPage(),
                );
              },
            ),
            const Spacer(),
            SizedBox(height: 20.h)
          ],
        ),
      ),
    );
  }
}
