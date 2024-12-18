import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/core/styles/style.dart';
import 'package:patel_samaj_app/l10n/l10n.dart';

@RoutePage()
class NotificationControlScreen extends StatefulWidget {
  const NotificationControlScreen({super.key});

  @override
  State<NotificationControlScreen> createState() =>
      _NotificationControlScreenState();
}

class _NotificationControlScreenState extends State<NotificationControlScreen> {
  bool mainNotificationEnabled = true;
  Map<String, bool> notificationStates = {
    'post': true,
    'useful': true,
    'shrandhanjali': false,
    'besna': false,
    'congratulation': false,
    'my_chats': false,
    'group_messages': true,
  };

  List<String> notificationDescriptions = [
    'post',
    'useful',
    'shrandhanjali',
    'besna',
    'congratulation',
    'my_chats',
    'group_messages',
  ];

  void _toggleMainNotification(bool value) {
    setState(() {
      mainNotificationEnabled = value;
      // When main toggle is turned off, disable all notifications
      // When turned on, restore previous states
      notificationStates
          .updateAll((key, _) => value ? notificationStates[key]! : false);
    });
  }

  void _toggleNotificationOption(String key) {
    if (!mainNotificationEnabled) return; // Don't toggle if main switch is off
    setState(() {
      notificationStates[key] = !notificationStates[key]!;
    });
  }

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
          context.l10n.notification_control,
          style: AppTextStyle.heading3,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMainNotificationToggle(context),
              SizedBox(height: 32.h),
              _buildNotificationOption(
                title: context.l10n.post,
                subtitle: context.l10n.post_notification_description,
                stateKey: 'post',
              ),
              _buildNotificationOption(
                title: context.l10n.useful,
                subtitle: context.l10n.useful_notification_description,
                stateKey: 'useful',
              ),
              _buildNotificationOption(
                title: context.l10n.shrandhanjali,
                subtitle: context.l10n.memorial_notification_description,
                stateKey: 'shrandhanjali',
              ),
              _buildNotificationOption(
                title: context.l10n.besna,
                subtitle: context.l10n.memorial_notification_description,
                stateKey: 'besna',
              ),
              _buildNotificationOption(
                title: context.l10n.congratulation,
                subtitle: context.l10n.congratulation_notification_description,
                stateKey: 'congratulation',
              ),
              _buildNotificationOption(
                title: context.l10n.my_chats,
                subtitle: context.l10n.chat_notification_description,
                stateKey: 'my_chats',
              ),
              _buildNotificationOption(
                title: context.l10n.group_messages,
                subtitle: context.l10n.group_notification_description,
                stateKey: 'group_messages',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainNotificationToggle(BuildContext context) {
    return FadeInUp(
      duration: const Duration(milliseconds: 500),
      child: Row(
        children: [
          const Icon(Icons.notifications, size: 24),
          SizedBox(width: 16.w),
          Expanded(
            child: Text(
              context.l10n.allow_notification,
              style: AppTextStyle.heading4,
            ),
          ),
          Switch(
            value: mainNotificationEnabled,
            onChanged: _toggleMainNotification,
            activeTrackColor: AppColors.secondaryPurple,
            thumbColor: WidgetStateProperty.all(!mainNotificationEnabled
                ? AppColors.secondaryPurple
                : Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationOption({
    required String title,
    required String subtitle,
    required String stateKey,
  }) {
    final isEnabled = mainNotificationEnabled && notificationStates[stateKey]!;
    return GestureDetector(
      onTap: () => _toggleNotificationOption(stateKey),
      child: FadeInUp(
        duration: const Duration(milliseconds: 500),
        child: Container(
          margin: EdgeInsets.only(bottom: 32.h),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: AppTextStyle.heading5,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      subtitle,
                      style: AppTextStyle.bodyText3.copyWith(
                        color: const Color(0xff6A6A6A),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 24.w),
              Container(
                decoration: BoxDecoration(
                  gradient: isEnabled ? AppColors.backGroundGradient : null,
                  border: Border.all(
                    color: AppColors.primaryBlue,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(8.r),
                ),
                padding: EdgeInsets.all(4.w),
                child: Icon(
                  Icons.check,
                  size: 16.sp,
                  color: isEnabled ? Colors.white : Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
