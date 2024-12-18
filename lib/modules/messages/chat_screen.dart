import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../core/styles/style.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage('https://via.placeholder.com/150'),
            ),
            const SizedBox(width: 10),
            Text(
              'User Name',
              style: AppTextStyle.heading3,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                _buildMessageBubble('Ut officia atque quia.', false),
                _buildMessageBubble('Tempora laborum optio optio quidem.', true),
                _buildMessageBubble('Odit doloremque ut voluptate iure soluta hic.', false),
                _buildMessageBubble('Corrupti voluptatem distinctio veritatis qui magnam.', false),
                _buildMessageBubble('Quia assumenda saepe quasi tempore et deleniti exercitationem voluptate.', true),
                _buildMessageBubble('Totam non explicabo laudantium quam est culpa.', false),
                _buildMessageBubble('Provident incident ut libero sapiente aliquam qui.', true),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: _buildMessageInput(),
    );
  }

  Widget _buildMessageBubble(String message, bool isSender) {
    return Align(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: const EdgeInsets.all(10),
        constraints: const BoxConstraints(
          maxWidth: 250,
        ),
        decoration: BoxDecoration(
          color: isSender ? AppColors.secondaryPurple1 : Colors.grey.shade100,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          message,
          style: AppTextStyle.bodyText2.copyWith(
            color: isSender ? Colors.white : Colors.black,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Your message',
          hintStyle: AppTextStyle.bodyText2.copyWith(
            color: Colors.grey.shade500,
          ),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: AppColors.secondaryPurple1),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: CircleAvatar(
              backgroundColor: AppColors.secondaryPurple1,
              child: Center(
                child: Transform.rotate(
                  angle: 100,
                  child: IconButton(
                    icon: const Icon(Icons.send, color: Colors.white),
                    onPressed: () {
                      // Handle send message action
                    },
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
