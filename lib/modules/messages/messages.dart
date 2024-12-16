import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/styles/style.dart';

@RoutePage()
class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.black,
                    )),
                Text('Messages', style: AppTextStyle.heading3),
                const Spacer(),
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              ],
            ),
            const SizedBox(height: 10),
            _buildCustomSegmentedControl(),
            Expanded(
              child: ListView(
                children: [
                  _buildMessageTile('Lucy Grimes', 'ut et recusandae', '3:15'),
                  _buildMessageTile('Ramon Heathcote', 'praesentium doloremque repudiandae', '3:15'),
                  _buildMessageTile('Regina Greenfelder', 'et harum corrupti', '3:15'),
                  _buildMessageTile('Nicholas Stark', 'praesentium doloremque repudiandae', '3:15'),
                  _buildMessageTile('Candice Morissette', 'praesentium doloremque repudiandae', '3:15'),
                  _buildMessageTile('Kristopher Bosco', 'praesentium doloremque repudiandae', '3:15'),
                  _buildMessageTile('Vicki Douglas Sr.', 'ipsa dignissimos facere', '3:15'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomSegmentedControl() {
    int selectedIndex = 0; // Initial selected index

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 60),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primaryPurple1.withOpacity(0.1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                // Handle tab change
                selectedIndex = 0;
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: selectedIndex == 0 ? AppColors.secondaryPurple1 : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('Group SMS', style: AppTextStyle.heading3.copyWith(color: Colors.white)),
              ),
            ),
            const SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                // Handle tab change
                selectedIndex = 1;
              },
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  color: selectedIndex == 1 ? AppColors.secondaryPurple1 : Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text('My Chats', style: AppTextStyle.heading3.copyWith(color: Colors.black)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessageTile(String name, String message, String time) {
    return ListTile(
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(time),
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
    );
  }
}
