import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:patel_samaj_app/common/extensions/context_ext.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: context.screenWidth * 0.8,
      child: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  _buildDrawerItem('Advertisement', Icons.campaign),
                  _buildDrawerItem('Matrimony', Icons.favorite),
                  _buildDrawerItem('Digital Admin', Icons.admin_panel_settings),
                  _buildDrawerItem('Social service organization', Icons.groups),
                  const Divider(),
                  _buildDrawerItem('My Samaj', Icons.people),
                  _buildDrawerItem('About Application', Icons.info),
                  _buildDrawerItem('About Cohesyn', Icons.business),
                  _buildDrawerItem('Contact Us', Icons.contact_support),
                  _buildDrawerItem('Notification Control', Icons.notifications),
                  _buildDrawerItem('Share Application', Icons.share),
                  _buildDrawerItem('Feedback', Icons.star),
                  _buildDrawerItem('Log out', Icons.logout),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Developed with ',
                        style: AppTextStyle.subtitle1,
                      ),
                      const Icon(Icons.favorite,
                          color: Colors.orange, size: 18),
                      Text(
                        ' by',
                        style: AppTextStyle.subtitle1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Image.asset(
                    'assets/cohesyn_black_logo.png',
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDrawerItem(String title, IconData icon) {
    return ListTile(
      leading: Icon(
        icon,
        color: AppColors.secondaryPurple,
        size: 24.r,
      ),
      title: Text(
        title,
        style: AppTextStyle.subtitle1,
      ),
      onTap: () {
        // Handle drawer item tap
      },
    );
  }
}
