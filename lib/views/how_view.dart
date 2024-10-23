import 'package:flutter/material.dart';
import 'package:little_savior/utils/colors.dart';
import 'package:little_savior/utils/strings.dart';
import 'package:little_savior/utils/text_styles.dart';

class HowView extends StatelessWidget {
  const HowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "¿Que hago?",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(AppStrings.question01, style: AppTextStyles.questionTextStyle,),
              Text(AppStrings.answer01, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 20),
              Text(AppStrings.question02, style: AppTextStyles.questionTextStyle,),
              Text(AppStrings.answer02, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 20),
              Text(AppStrings.question03, style: AppTextStyles.questionTextStyle,),
              Text(AppStrings.answer03, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 20),
              Text(AppStrings.question03, style: AppTextStyles.questionTextStyle,),
              Text(AppStrings.answer03, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 20),
              Text(AppStrings.question04, style: AppTextStyles.questionTextStyle,),
              Text(AppStrings.answer04, style: AppTextStyles.answerTextStyle,),
            ],
          ),
        ),
      ),
    );
  }
}
