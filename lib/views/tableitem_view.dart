import 'package:flutter/material.dart';
import 'package:little_savior/utils/text_styles.dart';

import '../utils/colors.dart';

class TableItemView extends StatelessWidget {
  final String imagePath;
  final String title;
  final String description;

  const TableItemView({
    super.key,
    required this.imagePath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(imagePath),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              title,
              style: AppTextStyles.normalTextStyle,
            ),
            const SizedBox(height: 8.0),
            Text(
              description,
              style: AppTextStyles.answerTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
