import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class PostsScreen extends StatelessWidget {
  const PostsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Post',
          style: AppTextStyle.heading3,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildPostCard(),
            _buildPostCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildPostCard() {
    return Card(
      color: Colors.white,
      elevation: 1,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Nostrum facere consequatur voluptas sit justo eum quidem nisi cum. Dolorum tenetur eaque quia eiu...more',
              style: AppTextStyle.bodyText1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://example.com/image1.jpg', // Replace with your image URL
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const SizedBox(
                    height: 300,
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '12min ago',
              style: AppTextStyle.bodyText2.copyWith(
                color: Colors.grey.shade300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
