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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(textAlign: TextAlign.justify, AppStrings.question01, style: AppTextStyles.questionTextStyle,),
              Text(textAlign: TextAlign.justify, AppStrings.answer01, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 30),
              Text(textAlign: TextAlign.justify, AppStrings.question02, style: AppTextStyles.questionTextStyle,),
              Text(textAlign: TextAlign.justify, AppStrings.answer02, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 30),
              Text(textAlign: TextAlign.justify, AppStrings.question03, style: AppTextStyles.questionTextStyle,),
              Text(textAlign: TextAlign.justify, AppStrings.answer03, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 30),
              Text(textAlign: TextAlign.justify, AppStrings.question03, style: AppTextStyles.questionTextStyle,),
              Text(textAlign: TextAlign.justify, AppStrings.answer03, style: AppTextStyles.answerTextStyle,),
              SizedBox(height: 30),
              Text(textAlign: TextAlign.justify, AppStrings.question04, style: AppTextStyles.questionTextStyle,),
              Text(textAlign: TextAlign.justify, AppStrings.answer04, style: AppTextStyles.answerTextStyle,),
            ],
          ),
        ),
      ),
    );
  }
}
