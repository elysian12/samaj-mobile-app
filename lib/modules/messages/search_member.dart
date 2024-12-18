import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:patel_samaj_app/core/styles/style.dart';

@RoutePage()
class SearchMemberScreen extends StatelessWidget {
  const SearchMemberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        title: Text(
          'Search Members',
          style: AppTextStyle.heading2,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search by "Name"',
                fillColor: Colors.white,
                filled: true,
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  borderSide: BorderSide(
                    color: AppColors.secondaryPurple1,
                    width: 2,
                  ),
                ),
                prefixIcon: const Icon(Icons.search, color: AppColors.secondaryPurple1),
                hintStyle: AppTextStyle.bodyText2.copyWith(
                  color: Colors.grey.shade400,
                ),
                suffixIcon: const Icon(Icons.filter_alt, color: AppColors.secondaryPurple1),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5, // Number of members
              itemBuilder: (context, index) {
                return const Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: AppColors.secondaryPurple1,
                        ),
                        SizedBox(width: 10),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 5),
                            Text('Name: Amrita Singh', style: TextStyle(fontSize: 18)),
                            SizedBox(height: 5),
                            Text('Phone No.: 827298729', style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
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
