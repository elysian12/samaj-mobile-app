import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class NewMessageScreen extends StatelessWidget {
  const NewMessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'New Message',
          style: AppTextStyle.heading3,
        ),
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by “Name”',
                hintStyle: AppTextStyle.bodyText2.copyWith(
                  color: Colors.grey.shade300,
                ),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: AppColors.secondaryPurple1,
                    width: 2,
                  ),
                ),
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          // Contact List
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Number of contacts
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 2),
                  child: Card(
                    color: Colors.white,
                    margin: const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      child: ListTile(
                        leading: const CircleAvatar(
                          radius: 30,
                          backgroundImage: AssetImage(
                            'assets/images/profile.png',
                          ), // Placeholder image
                        ),
                        title: Text(
                          'Amrita Singh',
                          style: AppTextStyle.heading3,
                        ),
                        trailing: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.secondaryPurple1,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Message',
                            style: AppTextStyle.bodyText2.copyWith(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
