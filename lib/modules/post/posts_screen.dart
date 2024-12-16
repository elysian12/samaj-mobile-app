import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: ListView(
        children: [
          _buildPostCard(),
          _buildPostCard(),
        ],
      ),
    );
  }

  Widget _buildPostCard() {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Nostrum facere consequatur voluptas sit justo eum quidem nisi cum. Dolorum tenetur eaque quia eiu...more',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Image.network(
            'https://example.com/image1.jpg', // Replace with your image URL
            fit: BoxFit.cover,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('12min ago', style: TextStyle(color: Colors.grey)),
          ),
        ],
      ),
    );
  }
}
