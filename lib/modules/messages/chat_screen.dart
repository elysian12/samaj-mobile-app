import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
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
          _buildMessageInput(),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(String message, bool isSender) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSender ? Colors.blue[200] : Colors.grey[300],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(message),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Your message',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send),
            onPressed: () {
              // Handle send message action
            },
          ),
        ],
      ),
    );
  }
}
